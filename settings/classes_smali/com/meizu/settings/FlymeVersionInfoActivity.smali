.class public Lcom/meizu/settings/FlymeVersionInfoActivity;
.super Lcom/meizu/settings/FlymeSettingsBaseActivity;
.source "FlymeVersionInfoActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsBaseActivity;-><init>()V

    return-void
.end method

.method private checkIfNeedAddColon(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 137
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "zh"

    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "："

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_69

    :cond_2d
    const-string v2, ":"

    .line 143
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_47
    if-eqz p0, :cond_59

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_68

    .line 150
    :cond_59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_68
    return-object p0

    :cond_69
    :goto_69
    return-object p1
.end method

.method private getSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 6

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 124
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1d

    const/4 p1, 0x0

    .line 130
    :cond_1d
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 131
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f060075

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 132
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p2, 0x21

    .line 130
    invoke-virtual {v0, v1, p1, p0, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private init()V
    .registers 26

    move-object/from16 v0, p0

    const v1, 0x7f0a03de

    .line 54
    invoke-virtual {v0, v1}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/LongClickCopyTextView;

    const v2, 0x7f0a0214

    .line 55
    invoke-virtual {v0, v2}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/widget/LongClickCopyTextView;

    const v3, 0x7f0a064b

    .line 56
    invoke-virtual {v0, v3}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/widget/LongClickCopyTextView;

    const v4, 0x7f0a0210

    .line 57
    invoke-virtual {v0, v4}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/widget/LongClickCopyTextView;

    const v5, 0x7f0a0212

    .line 58
    invoke-virtual {v0, v5}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meizu/settings/widget/LongClickCopyTextView;

    const v6, 0x7f0a0228

    .line 59
    invoke-virtual {v0, v6}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/meizu/settings/widget/LongClickCopyTextView;

    const v7, 0x7f0a02c9

    .line 60
    invoke-virtual {v0, v7}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/meizu/settings/widget/LongClickCopyTextView;

    const v8, 0x7f0a0365

    .line 61
    invoke-virtual {v0, v8}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/meizu/settings/widget/LongClickCopyTextView;

    const v9, 0x7f0a03e2

    .line 62
    invoke-virtual {v0, v9}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/meizu/settings/widget/LongClickCopyTextView;

    const v10, 0x7f0a02ab

    .line 63
    invoke-virtual {v0, v10}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/meizu/settings/widget/LongClickCopyTextView;

    const v11, 0x7f0a0638

    .line 64
    invoke-virtual {v0, v11}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/meizu/settings/widget/LongClickCopyTextView;

    const v12, 0x7f0a02bb

    .line 65
    invoke-virtual {v0, v12}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/meizu/settings/widget/LongClickCopyTextView;

    .line 67
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v14, ""

    const-string/jumbo v15, "ro.vendor.meizu.carrier.model"

    .line 68
    invoke-static {v15, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 69
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v16

    move-object/from16 v17, v11

    if-eqz v16, :cond_9b

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_88

    goto :goto_9b

    :cond_88
    const v11, 0x7f120be2

    .line 73
    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/meizu/settings/FlymeVersionInfoActivity;->checkIfNeedAddColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11, v13}, Lcom/meizu/settings/FlymeVersionInfoActivity;->getSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a2

    .line 70
    :cond_9b
    :goto_9b
    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/16 v11, 0x8

    .line 71
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    :goto_a2
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v11, "ril.gsm.imei"

    .line 76
    invoke-static {v11, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 78
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    .line 79
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    move-object/from16 v18, v10

    const/4 v10, 0x1

    if-nez v14, :cond_e1

    const-string v14, ","

    .line 81
    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d5

    .line 82
    array-length v14, v11

    if-lez v14, :cond_d5

    const/4 v14, 0x0

    .line 83
    aget-object v14, v11, v14

    move-object/from16 v19, v14

    .line 84
    array-length v14, v11

    if-le v14, v10, :cond_d0

    .line 85
    aget-object v10, v11, v10

    goto :goto_ea

    .line 87
    :cond_d0
    invoke-virtual {v13, v10}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_ea

    :cond_d5
    const/4 v14, 0x0

    .line 90
    invoke-virtual {v13, v14}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v14

    .line 91
    invoke-virtual {v13, v10}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v19, v14

    goto :goto_ea

    :cond_e1
    const/4 v14, 0x0

    .line 94
    invoke-virtual {v13, v14}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v19

    .line 95
    invoke-virtual {v13, v10}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v10

    :goto_ea
    move-object v11, v10

    move-object/from16 v10, v19

    const-string/jumbo v13, "ro.build.display.id"

    .line 97
    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "ro.flyme.version.id"

    .line 98
    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v19, "ro.build.inside.id"

    move-object/from16 v20, v9

    .line 99
    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v19, "ro.build.mask.id"

    move-object/from16 v21, v8

    .line 100
    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v19, "ro.build.fingerprint"

    move-object/from16 v22, v8

    .line 101
    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v19, v8

    .line 102
    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getSecurityPatch()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v23, "ro.product.first_api_level"

    move-object/from16 v24, v8

    .line 103
    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 105
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_133

    move-object/from16 v23, v8

    const/16 v8, 0x8

    .line 106
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_135

    :cond_133
    move-object/from16 v23, v8

    :goto_135
    const v8, 0x7f120d0b

    .line 109
    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/meizu/settings/FlymeVersionInfoActivity;->checkIfNeedAddColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8, v15}, Lcom/meizu/settings/FlymeVersionInfoActivity;->getSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f1214a8

    .line 110
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/meizu/settings/FlymeVersionInfoActivity;->checkIfNeedAddColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/meizu/settings/FlymeVersionInfoActivity;->getSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1206da

    .line 111
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/settings/FlymeVersionInfoActivity;->checkIfNeedAddColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lcom/meizu/settings/FlymeVersionInfoActivity;->getSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1206dc

    .line 112
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/settings/FlymeVersionInfoActivity;->checkIfNeedAddColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Lcom/meizu/settings/FlymeVersionInfoActivity;->getSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f120420

    .line 113
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/settings/FlymeVersionInfoActivity;->checkIfNeedAddColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v13}, Lcom/meizu/settings/FlymeVersionInfoActivity;->getSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1208b6

    .line 114
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/settings/FlymeVersionInfoActivity;->checkIfNeedAddColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v14}, Lcom/meizu/settings/FlymeVersionInfoActivity;->getSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1208b4

    .line 115
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/settings/FlymeVersionInfoActivity;->checkIfNeedAddColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lcom/meizu/settings/FlymeVersionInfoActivity;->getSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    move-object/from16 v8, v21

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1208b5

    .line 116
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/settings/FlymeVersionInfoActivity;->checkIfNeedAddColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/meizu/settings/FlymeVersionInfoActivity;->getSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    move-object/from16 v9, v20

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1208b2

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/settings/FlymeVersionInfoActivity;->checkIfNeedAddColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/meizu/settings/FlymeVersionInfoActivity;->getSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    move-object/from16 v10, v18

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1212e0

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/settings/FlymeVersionInfoActivity;->checkIfNeedAddColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/meizu/settings/FlymeVersionInfoActivity;->getSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    move-object/from16 v11, v17

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1208b3

    .line 119
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/settings/FlymeVersionInfoActivity;->checkIfNeedAddColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/meizu/settings/FlymeVersionInfoActivity;->getSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 33
    invoke-super {p0, p1}, Lcom/meizu/settings/FlymeSettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 37
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_10
    const p1, 0x7f0d0104

    .line 39
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/meizu/settings/FlymeVersionInfoActivity;->init()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 45
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_a

    goto :goto_d

    .line 47
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 49
    :goto_d
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
