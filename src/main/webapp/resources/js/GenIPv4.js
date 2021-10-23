let currentIPv4 = new Array(4);

function GenIPv4(typeOfClass) {
    // textBoxIp.Enabled = true;
    // lockedTab = true;
    // clearTextBox();
    // timerStart();

    let ip_text = document.getElementsByClassName("ip").valueOf().innerHTML;
    ip_text.Text = "";
    let max_num;

    if (typeOfClass === "classes")
        max_num = 223;
    else
        max_num = 255;

    do {
        currentIPv4[0].push(Math.random() * max_num);
    } while (currentIPv4[0] === 127);

    ip_text.Text += '.' + currentIPv4[0];
    for (let i = 1; i < 3; i++) {
        currentIPv4[i].push(Math.random() * 255);
        ip_text.Text += '.' + currentIPv4[i];

    }
    currentIPv4[3].push(Math.random() * 254);
    ip_text.Text += '.' + currentIPv4[3];

    GetIpClass();
    if (!checkBoxClass.Checked) {
        prefix = random.Next(0, 30);
        ipPrefix.Text = '/' + prefix.ToString();
    }
    numberOfHosts = Convert.ToUInt32(Math.Pow(2, 32 - prefix) - 2);
    ip_text.Text = ip_text.Text.Substring(1);

    GetNetMask();
    sumbit.Enabled = true;
}

function GetIpClass() {
    if (currentIPv4[0] >= 1 && currentIPv4[0] <= 126)
    {
        ipClass = "A";
        prefix = 8;
    }
    if (currentIPv4[0] >= 128 && currentIPv4[0] <= 191)
    {
        ipClass = "B";
        prefix = 16;
    }
    if (currentIPv4[0] >= 192 && currentIPv4[0] <= 223)
    {
        ipClass = "C";
        prefix = 24;
    }
    if (currentIPv4[0] >= 224 && currentIPv4[0] <= 239)
    {
        ipClass = "D";
    }
    if (currentIPv4[0] >= 240 && currentIPv4[0] <= 247)
    {
        ipClass = "E";
    }
}