package org.example.service.impl;

import lombok.Getter;
import lombok.Setter;
import org.example.service.ClassesService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Random;

@Service
@Getter
@Setter
public class ClassesServiceImpl implements ClassesService {

//    @Autowired
//    private ClassesRepo classesRepo;

    private Integer[] currentIPv4 = new Integer[4];
    private Integer prefix = 0;
    private String ipPrefix = "";
    private String ipClass = "";
    private Double numberOfHosts = 0.0;

    private String ipNetmask = "";
    private String ipInverseMask = "";
    private String netAddr = "";
    private String hostAddr = "";
    private String netAddrBin = "";

    private static final String tmp = "00000000000000000000000000000000";

    private String minAddr = "";
    private String maxAddr = "";
    private String broadcastingAddr = "";

    private static final Integer maxRate = 10;

    @Override
    @Transactional
    public void saveTest() {

    }

    @Override
    @Transactional
    public String checkAnswers(String[] taskArray) {
        String[] values = getAllValues();
        Integer rate = 0;

        for (int i = 0; i < taskArray.length; i++)
            if (taskArray[i].equals(values[i]))
                rate++;

        rate = (int)(((double)rate / maxRate) * 100);

        return rate.toString() + "%";
    }

    @Override
    @Transactional
    public String genIPv4(String classification, boolean check) {
        Random random = new Random();
        String ipText = "";
        Integer maxNum;


        if (classification.equals("CLASSES"))
            maxNum = 223;
        else
            maxNum = 225;

        do {
            currentIPv4[0] = random.ints(1, maxNum)
                .findFirst().getAsInt();
        } while (currentIPv4[0] == 127);

        ipText += '.' + currentIPv4[0].toString();
        for (int i = 1; i < 3; i++) {
            currentIPv4[i] = random.ints(0, 255)
                    .findFirst().getAsInt();
            ipText += '.' + currentIPv4[i].toString();
        }

        currentIPv4[3] = random.ints(1, 254)
                .findFirst().getAsInt();
        ipText += '.' + currentIPv4[3].toString();

        getIpClass();
//        if (!check) {
//            prefix = random.ints(0, 30)
//                    .findFirst().getAsInt();
//            ipPrefix = "/" + prefix.toString();
//        }

        numberOfHosts = Math.pow(2, 32 - prefix) - 2;
        ipText = ipText.substring(1);

        getNetMask();

        return ipText;
    }

    private void getIpClass() {
        if (currentIPv4[0] >= 1 && currentIPv4[0] <= 127) {
            ipClass = "A";
            prefix = 8;
        } else if (currentIPv4[0] >= 128 && currentIPv4[0] <= 191) {
            ipClass = "B";
            prefix = 16;
        } else if (currentIPv4[0] >= 192 && currentIPv4[0] <= 223) {
            ipClass = "C";
            prefix = 24;
        } else if (currentIPv4[0] >= 224 && currentIPv4[0] <= 239)
            ipClass = "D";
        else if (currentIPv4[0] >= 240 && currentIPv4[0] <= 247)
            ipClass = "E";
    }

    private void getNetMask() {
        String tmpMask = getStrMask();
        String tmpInvertMask = invertStrBits(tmpMask);

        Short[] maskByte = getByteMask(tmpMask);
        Short[] inverseMaskByte = getByteMask(tmpInvertMask);

        Integer[] netAddrShort = new Integer[4];
        Integer[] hostAddrShort = new Integer[4];
        for (int i = 0; i < 4; i++) {
            netAddrShort[i] = (int)(maskByte[i] & currentIPv4[i]);
            hostAddrShort[i] = (int)(inverseMaskByte[i] & currentIPv4[i]);

            String ipPart = Integer.toString(currentIPv4[i], 2);
            String dop = "";
            for (int j = 0; j < 8 - ipPart.length(); j++)
                dop += "0";
            netAddrBin += dop + ipPart;
        }

        ipNetmask = join(Arrays.asList(maskByte), ".");
        ipInverseMask = join(Arrays.asList(inverseMaskByte), ".");
        netAddr = join(Arrays.asList(netAddrShort), ".");
        hostAddr = join(Arrays.asList(hostAddrShort), ".");

        getMinMaxAddr();
    }

    private String getStrMask() {
        String tmpMask = "";
        for (int i = 0; i < prefix; i++)
            tmpMask += '1';
        return (tmpMask + tmp).substring(0, 32);
    }

    private String invertStrBits(String tmpMask) {
        String inverted = "";
        char[] arr = tmpMask.toCharArray();
        for (int i = 0; i < tmpMask.length(); i++){
            if (arr[i] == '1')
                inverted += "0";
            else
                inverted += "1";
        }
        return inverted;
    }

    private Short[] getByteMask(String mask) {
        String[] maskArr = new String[4];
        Short[] maskByte = new Short[4];
        char[] maskArrChar = mask.toCharArray();
        for (int i = 0; i < 4; i++) {
            maskArr[i] = mask.substring(i*8, (i+1)*8);//Character.toString(maskArrChar[i*8]);
            maskByte[i] = (short)Integer.parseInt(maskArr[i], 2);//toInt16(maskArr[i], 2);
        }
        return maskByte;
    }

    public static Short toInt16(String value, int fromBase) {
        int num = (fromBase == 2) ? Integer.parseInt(value) : 0;
        return fromBase != 10 && num <= 65535 || num >= -32768 && num <= 65535 ? (short) num : 0;
    }

    static String join(Collection<?> s, String delimiter) {
        StringBuilder builder = new StringBuilder();
        Iterator<?> iter = s.iterator();
        while (iter.hasNext()) {
            builder.append(iter.next());
            if (!iter.hasNext()) {
                break;
            }
            builder.append(delimiter);
        }
        return builder.toString();
    }

//----------------------------------------------------------------------------------------------------------

    private void getMinMaxAddr() {
        String str = "";
        int len = 32 - prefix - 1;
        for (int i = 0; i < len; i++)
            str += '0';
        str += '1';

        netAddrBin = mySubString(netAddrBin, 0, prefix);
        netAddrBin += str;
        minAddr = bin2decAddr();

        str = invertStrBits(str);
        netAddrBin = mySubString(netAddrBin, 0, prefix);
        netAddrBin += str;
        maxAddr = bin2decAddr();

        str = str.replace("0", "1");
        netAddrBin = mySubString(netAddrBin, 0, prefix);
        netAddrBin += str;
        broadcastingAddr = bin2decAddr();

    }

    private String bin2decAddr() {
        Integer[] arrInt = new Integer[4];
        for (int i = 0; i < netAddrBin.length() / 8; i++)
            arrInt[i] = Integer.valueOf(mySubString(netAddrBin, i*8, 8), 2);
        return join(Arrays.asList(arrInt), ".");
    }

    private String mySubString(String myString, int start, int length) {
        return myString.substring(start, Math.min(start + length, myString.length()));
    }

//-----------------------------------------------------------------------------------------
//    @Override
//    @Transactional
    private String[] getAllValues() {
        String[] arrayValues = new String[10];

        arrayValues[0] = ipClass;
        arrayValues[1] = ipNetmask;
        arrayValues[2] = ipInverseMask;
        arrayValues[3] = prefix.toString();
        arrayValues[4] = netAddr;
        arrayValues[5] = hostAddr;
        arrayValues[6] = minAddr;
        arrayValues[7] = maxAddr;
        arrayValues[8] = broadcastingAddr;
        arrayValues[9] = numberOfHosts.toString();

        return arrayValues;
    }
}
