.class synthetic Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$1;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"


# static fields
.field static final synthetic $SwitchMap$com$flyme$systemui$statusbar$ext$FlymeNetworkType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 347
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->values()[Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$1;->$SwitchMap$com$flyme$systemui$statusbar$ext$FlymeNetworkType:[I

    :try_start_9
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$1;->$SwitchMap$com$flyme$systemui$statusbar$ext$FlymeNetworkType:[I

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$1;->$SwitchMap$com$flyme$systemui$statusbar$ext$FlymeNetworkType:[I

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$1;->$SwitchMap$com$flyme$systemui$statusbar$ext$FlymeNetworkType:[I

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$1;->$SwitchMap$com$flyme$systemui$statusbar$ext$FlymeNetworkType:[I

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_E:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$1;->$SwitchMap$com$flyme$systemui$statusbar$ext$FlymeNetworkType:[I

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    :try_start_40
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$1;->$SwitchMap$com$flyme$systemui$statusbar$ext$FlymeNetworkType:[I

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4b
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$1;->$SwitchMap$com$flyme$systemui$statusbar$ext$FlymeNetworkType:[I

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_56

    :catch_56
    return-void
.end method
