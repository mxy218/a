.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;


# instance fields
.field private mNoDataShowG:Z

.field private mShow4GPlus:Z

.field private mShowAll:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .registers 5

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->mShowAll:Z

    .line 329
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->mNoDataShowG:Z

    .line 330
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->mShow4GPlus:Z

    .line 333
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->mShowAll:Z

    .line 334
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->mNoDataShowG:Z

    .line 335
    iput-boolean p3, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->mShow4GPlus:Z

    return-void
.end method


# virtual methods
.method public getNetworkTypeIcon(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;ZIZ)I
    .registers 5

    const/4 p2, 0x0

    if-lez p3, :cond_4

    return p2

    :cond_4
    if-eqz p1, :cond_40

    .line 386
    sget-object p3, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$1;->$SwitchMap$com$flyme$systemui$statusbar$ext$FlymeNetworkType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    packed-switch p1, :pswitch_data_42

    goto :goto_40

    .line 403
    :pswitch_12  #0x7
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_network_type_3g:I

    goto :goto_40

    .line 400
    :pswitch_15  #0x6
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->mShowAll:Z

    if-eqz p0, :cond_40

    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_1x:I

    :goto_1b
    move p2, p0

    goto :goto_40

    .line 394
    :pswitch_1d  #0x5
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_network_type_3g:I

    goto :goto_40

    .line 391
    :pswitch_20  #0x4
    iget-boolean p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->mShowAll:Z

    if-eqz p1, :cond_40

    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->mNoDataShowG:Z

    if-eqz p0, :cond_2b

    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_g:I

    goto :goto_1b

    :cond_2b
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_e:I

    goto :goto_1b

    .line 388
    :pswitch_2e  #0x3
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->mShowAll:Z

    if-eqz p0, :cond_40

    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_g:I

    goto :goto_1b

    .line 406
    :pswitch_35  #0x2
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_network_type_4g_plus:I

    goto :goto_40

    :pswitch_38  #0x1
    if-eqz p4, :cond_3d

    .line 397
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_4g_plus:I

    goto :goto_1b

    :cond_3d
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_4g:I

    goto :goto_1b

    :cond_40
    :goto_40
    return p2

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_35  #00000002
        :pswitch_2e  #00000003
        :pswitch_20  #00000004
        :pswitch_1d  #00000005
        :pswitch_15  #00000006
        :pswitch_12  #00000007
    .end packed-switch
.end method

.method public getVoiceTypeIcon(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;ZZZ)I
    .registers 5

    const/4 p0, 0x0

    if-eqz p3, :cond_2a

    if-eqz p1, :cond_2a

    .line 420
    sget-object p2, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$1;->$SwitchMap$com$flyme$systemui$statusbar$ext$FlymeNetworkType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_2c

    goto :goto_2a

    .line 437
    :pswitch_11  #0x7
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_3g:I

    goto :goto_2a

    .line 434
    :pswitch_14  #0x6
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_1x:I

    goto :goto_2a

    .line 428
    :pswitch_17  #0x5
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_3g:I

    goto :goto_2a

    .line 425
    :pswitch_1a  #0x4
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_e:I

    goto :goto_2a

    .line 422
    :pswitch_1d  #0x3
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_g:I

    goto :goto_2a

    .line 440
    :pswitch_20  #0x2
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_4g_plus:I

    goto :goto_2a

    :pswitch_23  #0x1
    if-eqz p4, :cond_28

    .line 431
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_4g_plus:I

    goto :goto_2a

    :cond_28
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_4g:I

    :cond_2a
    :goto_2a
    return p0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_23  #00000001
        :pswitch_20  #00000002
        :pswitch_1d  #00000003
        :pswitch_1a  #00000004
        :pswitch_17  #00000005
        :pswitch_14  #00000006
        :pswitch_11  #00000007
    .end packed-switch
.end method
