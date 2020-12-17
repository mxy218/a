.class Lcom/android/server/hips/intercept/LocalInterceptionRule;
.super Ljava/lang/Object;
.source "LocalInterceptionRule.java"


# instance fields
.field private mLocalRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    return-void
.end method

.method private initLocalInterceptionRule()V
    .registers 19

    .line 18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 19
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===*|||calleeClass===*|||processName===*|||action===android.view.InputMethod|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 21
    const-string/jumbo v3, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.alipay.security.mobile.authenticator|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 23
    const-string/jumbo v4, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.google.android.gms|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 25
    const-string/jumbo v5, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.eg.android.AlipayGphone|||calleeClass===com.alipay.android.app.MspService|||processName===com.eg.android.AlipayGphone|||action===com.eg.android.AlipayGphone.IAlixPay|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 27
    const-string/jumbo v6, "version===4|||runType===provider|||callerPkg===*|||calleePkg===com.tencent.mm|||calleeClass===com.tencent.mm.plugin.base.stub.MMPluginProvider|||processName===com.tencent.mm|||action===*|||data===*|||extras===uri=com.tencent.mm.sdk.plugin.provider|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 29
    const-string/jumbo v7, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.sina.weibo|||calleeClass===com.sina.weibo.business.RemoteSSOService|||processName===com.sina.weibo|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 31
    const-string/jumbo v8, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.google.android.gsf|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 33
    const-string/jumbo v9, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.unionpay.mobile.tsm|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 35
    const-string/jumbo v10, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.tencent.unipay|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 37
    const-string/jumbo v10, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.iflytek.vflynote|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 39
    const-string/jumbo v11, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.xiaomi.gamecenter.sdk.service|||calleeClass===*|||processName===com.xiaomi.gamecenter.sdk.service|||action===com.xiaomi.gamecenter.sdk.service|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 41
    const-string/jumbo v12, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.cmcc.wallet|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 43
    const-string/jumbo v13, "version===4|||runType===*|||callerPkg===com.google.android.wearable.app|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 45
    const-string/jumbo v14, "version===4|||runType===*|||callerPkg===com.google.android.wearable.app.cn|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 47
    const-string/jumbo v15, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.google.android.wearable.app|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 49
    const-string/jumbo v15, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.google.android.wearable.app.cn|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 51
    move-object/from16 v16, v15

    const-string/jumbo v15, "version===4|||runType===*|||callerPkg===*|||calleePkg===android.view.accessibility.services|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 53
    move-object/from16 v17, v15

    const-string/jumbo v15, "version===4|||runType===*|||callerPkg===*|||calleePkg===android.voicesettings.service|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 55
    const-string/jumbo v15, "version===4|||runType===*|||callerPkg===*|||calleePkg===android.voiceinteraction.service|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 57
    const-string/jumbo v15, "version===4|||runType===*|||callerPkg===*|||calleePkg===android.assist.service|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 59
    const-string/jumbo v15, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.google.android.marvin.talkback|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 61
    const-string/jumbo v15, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.huawei.android.hwpay|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 63
    const-string/jumbo v15, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.cmcc.swpplugin|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 65
    const-string/jumbo v15, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.iflytek.speechcloud|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 67
    const-string/jumbo v15, "version===4|||runType===*|||callerPkg===com.google.android.marvin.talkback|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 69
    const-string/jumbo v15, "version===4|||runType===broadcast|||callerPkg===*|||calleePkg===*|||calleeClass===*|||procesName===*|||action===android.provider.Telephony.SMS_DELIVER|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 71
    const-string/jumbo v15, "version===4|||runType===broadcast|||callerPkg===*|||calleePkg===*|||calleeClass===*|||processName===*|||action===android.intent.action.MEDIA_BUTTON|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 75
    const-string/jumbo v15, "version===4|||runType===activity|||callerPkg===*|||calleePkg===*|||calleeClass===com.igexin.sdk.GActivity|||processName===*|||action===*|||data===*|||extras===*|||interaction===none|||interception===true|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 79
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===com.meizu.safe|||calleePkg===com.tencent.qqpimsecure|||calleeClass===com.tencent.qqpimsecure.service.TMSLiteService|||processName===com.tencent.qqpimsecure|||action===com.tencent.qqpimsecure.TMS_LITE_SERVICE|||data===*|||extras===*|||interception===true|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 89
    const-string/jumbo v2, "version===4|||runType===broadcast|||callerPkg===*|||calleePkg===com.moji.mjweather|||calleeClass===*|||processName===com.moji.mjweather|||action===com.moji.mjweather.widget.RIGHT_BOTTOM_BITMAP_BUTTON|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 91
    const-string/jumbo v2, "version===4|||runType===broadcast|||callerPkg===*|||calleePkg===oms.mmc.app.almanac_inland|||calleeClass===*|||processName===oms.mmc.app.almanac_inland|||action===oms.mmc.app.almanac.ClickWidget|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 93
    const-string/jumbo v2, "version===4|||runType===broadcast|||callerPkg===*|||calleePkg===com.baidu.searchbox|||calleeClass===com.baidu.searchbox.widget.WidgetActionReceiver|||processName===com.baidu.searchbox|||action===com.baidu.searchbox.action.FROM_WIDGET_PROVIDER|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 95
    const-string/jumbo v2, "version===4|||runType===broadcast|||callerPkg===*|||calleePkg===com.baidu.searchbox|||calleeClass===com.baidu.searchbox.widget.ClockWidgetProvider|||processName===com.baidu.searchbox|||action===com.baidu.searchbox.action.ALARM_CLOCK|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 103
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===com.tencent.mobileqq|||calleePkg===com.tencent.android.qqdownloader|||calleeClass===com.tencent.pangu.link.LinkProxyActivity|||processName===com.tencent.android.qqdownloader|||action===*|||data===*|||extras===*|||interception===true|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 115
    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 117
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.ztesoft.nbt|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 119
    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 121
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===android.voicesettings.service|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 123
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===android.voiceinteraction.service|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 125
    const-string/jumbo v2, "version===4|||runType===provider|||callerPkg===com.meizu.lifekit|||calleePkg===com.baidu.BaiduMap|||calleeClass===*|||processName===com.baidu.BaiduMap:MapCoreService|||action===*|||data===*|||extras===*|||interception===true|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 127
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===android.assist.service|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 129
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.google.android.marvin.talkback|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 131
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.hisun.ipos2|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 133
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.jishi.news|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 135
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.huawei.android.hwpay|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 137
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.huawei.appmarket.wallet|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 139
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.cmcc.swpplugin|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 141
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.iflytek.speechcloud|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 143
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===*|||calleeClass===*|||processName===*|||action===com.uc.browser.action.Addon|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 145
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.pptv.vassdk.plug.server|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 147
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===droid.app.hp|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 149
    const-string/jumbo v2, "version===4|||runType===broadcast|||callerPkg===*|||calleePkg===*|||calleeClass===*|||procesName===*|||action===android.provider.Telephony.SMS_DELIVER|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 151
    const-string/jumbo v2, "version===4|||runType===broadcast|||callerPkg===*|||calleePkg===*|||calleeClass===*|||processName===*|||action===android.intent.action.MEDIA_BUTTON|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 153
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.samsung.accessory|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 155
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===com.tencent.mobileqq|||calleePkg===com.tencent.android.qqdownloader|||calleeClass===com.tencent.assistant.sdk.SDKSupportService|||processName===com.tencent.android.qqdownloader|||action===com.tencent.android.qqdownloader.SDKService|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 157
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.sogou.speech.offlineservice|||calleeClass===com.sogou.speech.offlineservice.OfflineService|||processName===*|||action===com.sogou.speech.offlineservice.OfflineService|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 159
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.google.android.syncadapters.contacts|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 161
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.tencent.mtt|||calleeClass===com.tencent.mtt.browser.accessibility.QBAccessibiltyService|||processName===com.tencent.mtt|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 163
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.google.android.youtube|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 165
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===com.alibaba.android.rimet|||calleePkg===com.alibaba.android.rimet|||calleeClass===com.alibaba.android.rimet.biz.home.activity.HomeActivity|||processName===com.alibaba.android.rimet|||action===android.intent.action.VIEW|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 167
    const-string/jumbo v2, "version===4|||runType===provider|||callerPkg===com.facebook.katana|||calleePkg===com.facebook.orca|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 169
    const-string/jumbo v2, "version===4|||runType===broadcast|||callerPkg===*|||calleePkg===*|||calleeClass===*|||processName===*|||action===com.meizu.flyme.push.intent.MESSAGE|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 171
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===*|||calleePkg===com.mogujie|||calleeClass===com.mogujie.trade.order.payback.activity.MGPaymentBackAct|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 173
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===*|||calleePkg===com.mogujie|||calleeClass===com.meilishuo.mltrade.order.payback.activity.MGPaymentBackAct|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 175
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===*|||calleePkg===com.mogujie|||calleeClass===com.mogujie.mgjpaysdk.cashierdesk.PaymentFailureAct|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 177
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===*|||calleePkg===com.mogujie|||calleeClass===com.mogujie.mgjpaysdk.cashierdesk.MGCashierDeskAct|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 179
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===*|||calleePkg===com.sunrise.scmbhc|||calleeClass===com.sunrise.scmbhc.ui.activity.ChargeResultActivity|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 181
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===com.android.settings|||calleePkg===*|||calleeClass===*|||processName===*|||action===android.accounts.AccountAuthenticator|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 183
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.netease.yanxuan|||calleeClass===com.netease.yanxuan.module.pay.activity.PayCompleteActivity|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 185
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.netease.yanxuan|||calleeClass===com.netease.yanxuan.module.mainpage.activity.MainPageActivity|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 187
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.netease.cloudmusic|||calleeClass===com.netease.cloudmusic.activity.LockScreenActivity|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 189
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===*|||calleePkg===com.jm.android.jumei|||calleeClass===com.jm.android.jumei.buyflow.activity.payprocess.PaymentResultActivity|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 191
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===*|||calleePkg===com.sankuai.meituan|||calleeClass===com.meituan.android.food.payresult.FoodPayResultActivity|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 193
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===gz.lifesense.weidong|||calleeClass===com.lifesense.ble.message.NotificationAccessService|||processName===gz.lifesense.weidong|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 195
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===*|||calleePkg===com.sunrise.scmbhc|||calleeClass===com.sunrise.scmbhc.ui.activity.ChargeResultSCActivity|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 197
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===android.externalservice.service|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 199
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.google.android.syncadapters.calendar|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 201
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===*|||calleePkg===*|||calleeClass===com.igexin.sdk.MActivity|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 203
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===*|||calleePkg===me.ele.hbdteam|||calleeClass===me.ele.hbdteam.ui.home.HomeActivity|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 205
    const-string/jumbo v2, "version===4|||runType===provider|||callerPkg===com.google.android.googlequicksearchbox|||calleePkg===com.google.android.partnersetup|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 207
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.android.cts.certinstaller|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 209
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.google.android.tts|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 211
    const-string/jumbo v2, "version===4|||runType===broadcast|||callerPkg===*|||calleePkg===com.baidu.searchbox|||calleeClass===com.baidu.searchbox.widget.ClockWidgetProvider|||processName===com.baidu.searchbox|||action===com.baidu.searchbox.action.TIME_TICK|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 213
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.cttl.testService|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 215
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===com.android.systemui|||calleePkg===com.tencent.qqpimsecure|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 217
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.lingan.seeyou|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 219
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.baidu.news|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 221
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.baidu.video|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 223
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.ifeng.news2|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 225
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.baidu.fengchao.ui|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 227
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.baidu.tieba|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 229
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.c2vl.kgamebox|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 231
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.android.vending|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 233
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.kuaikan.comic|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 235
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.tmall.wireless|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 237
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.baidu.wenku|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 239
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===bubei.tingshu|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 241
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.le123.ysdq|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 243
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.jifen.qukan|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 245
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.cainiao.wireless|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 247
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.nuomi|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 249
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.mt.mtxx.mtxx|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 251
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.handsgo.jiakao.android|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 253
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.hupu.games|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 255
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.chuanke.ikk|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 257
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.baidu.browser.apps|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 259
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.dongqiudi.news|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 261
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.ct.client|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 263
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.kaola|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 269
    const-string/jumbo v2, "version===4|||runType===provider|||callerPkg===*|||calleePkg===com.greenpoint.android.mc10086.activity|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 271
    const-string/jumbo v2, "version===4|||runType===broadcast|||callerPkg===*|||calleePkg===com.netease.cloudmusic|||calleeClass===*|||processName===*|||action===ACTION_APPWIDGET_UPDATE|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 273
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===org.hapjs.mockup|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 275
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.tencent.gamehelper.smoba|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 277
    const-string/jumbo v2, "version===4|||runType===broadcast|||callerPkg===*|||calleePkg===com.achievo.vipshop|||calleeClass===*|||processName===com.baidu.BaiduMap|||action===com.baidu.BaiduMap.push.ONNOTIFICATIONCLICKED|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 279
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===com.ss.android.article.news|||calleePkg===com.ss.android.ugc.aweme|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===fg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 281
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.eg.android.AlipayGphone|||calleeClass===com.alipay.android.msp.pay.service.MspService|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 283
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.viber.voip|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 285
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.moji.mjweather|||calleeClass===com.moji.mjweather.JobSchedulerService|||processName===com.moji.mjweather|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 287
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===com.meizu.gamecenter.service|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 289
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===com.wr.pib.quick|||calleePkg===com.ahnlab.v3mobileplus|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 291
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===com.android.systemui|||calleePkg===com.ss.android.article.news|||calleeClass===*|||processName===com.ss.android.article.news|||action===android.ss.intent.action.DOWNLOAD_CLICK|||data===*|||extras===*|||interception===false|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 293
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===com.tencent.qqpimsecure|||calleePkg===com.tencent.qqpimsecure|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 295
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.tencent.qqpimsecure|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 297
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===*|||calleeClass===com.igexin.sdk.PushService|||processName===*|||action===com.igexin.sdk.action.service.message|||data===*|||extras===*|||interception===true|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 299
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===com.nd.he.mz|||calleePkg===com.sina.news|||calleeClass===com.sina.news.module.push.guard.activity.SinaDynmActivity|||processName===com.sina.news|||action===*|||data===*|||extras===*|||interaction===fg|||interception===true|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 301
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===com.nd.he.mz|||calleePkg===com.netease.newsreader.activity|||calleeClass===com.igexin.sdk.GActivity|||processName===com.netease.newsreader.activity:pushservice|||action===*|||data===*|||extras===*|||interaction===fg|||interception===true|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 303
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===com.nd.he.mz|||calleePkg===com.jingdong.app.mall|||calleeClass===com.igexin.sdk.GActivity|||processName===com.jingdong.app.mall:jdpush|||action===*|||data===*|||extras===*|||interaction===fg|||interception===true|||interaction===none|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 305
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===*|||calleePkg===*|||calleeClass===com.igexin.sdk.GActivity|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 307
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===com.meizu.voiceassistant|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 309
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===com.meizu.alphame|||calleePkg===com.autonavi.minimap|||calleeClass===com.amap.api.service.AMapService|||processName===com.autonavi.minimap:locationservice|||action===*|||data===*|||extras===*|||interception===false|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 311
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===*|||calleePkg===com.android.vending|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 313
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===com.meizu.mstore|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 315
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===com.android.nfc|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 317
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===com.meizu.testdev.smarttraveler|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 319
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===com.meizu.flyme.alphatravel|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 321
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===com.baidu.input|||calleePkg===com.tencent.mm|||calleeClass===com.tencent.mm.plugin.base.stub.WXEntryActivity|||processName===com.tencent.mm|||action===*|||data===*|||extras===*|||interception===false|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 323
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===com.iflytek.inputmethod|||calleePkg===com.tencent.mobileqq|||calleeClass===*|||processName===com.tencent.mobileqq|||action===*|||data===*|||extras===*|||interception===false|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 325
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===com.meizu.testdev.smarttraveler.test|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 327
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===com.meizu.flyme.inputtest|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 329
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===com.meizu.flyme.inputtest.test|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 331
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===com.meizu.flyme.launcher|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 335
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===com.tencent.mm|||calleePkg===com.tencent.mm|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 337
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===com.tencent.mobileqq|||calleePkg===com.tencent.mobileqq|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 339
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===com.alibaba.android.rimet|||calleePkg===com.alibaba.android.rimet|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 341
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===*|||calleeClass===com.sdk.plus.EnhService|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 343
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===*|||calleePkg===*|||calleeClass===com.sdk.plus.EnhActivity|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 345
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===com.meizu.suggestion|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 351
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===com.android.systemui|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 353
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===com.flyme.systemuitools|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 355
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===com.meizu.picker|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 357
    const-string/jumbo v2, "version===4|||runType===*|||callerPkg===com.meizu.cloud|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 359
    const-string/jumbo v2, "version===4|||runType===activity|||callerPkg===*|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===bg|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 361
    const-string/jumbo v2, "version===4|||runType===broadcast|||callerPkg===com.antutu.benchmark.full|||calleePkg===com.antutu.ABenchMark|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 363
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===com.antutu.ABenchMark|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 365
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===*|||calleeClass===org.chromium.content.app.SandboxedProcessService|||processName===*|||action===*|||data===*|||extras===*|||interception===false|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v1, v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 367
    const-string/jumbo v2, "version===4|||runType===retrieve_service|||callerPkg===*|||calleePkg===*|||calleeClass===cn.jpush.android.service.DaemonService|||processName===*|||action===*|||data===*|||extras===*|||interception===true|||interaction===*|||country===*|||sn===*|||flyme===*"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    return-void
.end method


# virtual methods
.method getData()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 11
    invoke-direct {p0}, Lcom/android/server/hips/intercept/LocalInterceptionRule;->initLocalInterceptionRule()V

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    return-object v0
.end method
