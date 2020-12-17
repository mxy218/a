.class public final enum Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;
.super Ljava/lang/Enum;
.source "FlymeNetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

.field public static final enum Type_1X:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

.field public static final enum Type_1X3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

.field public static final enum Type_3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

.field public static final enum Type_4G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

.field public static final enum Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

.field public static final enum Type_5G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

.field public static final enum Type_E:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

.field public static final enum Type_G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;


# instance fields
.field private mTypeId:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 11
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const/4 v1, 0x0

    const-string v2, "Type_G"

    invoke-direct {v0, v2, v1, v1}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    .line 15
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const/4 v2, 0x1

    const-string v3, "Type_3G"

    invoke-direct {v0, v3, v2, v2}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    .line 19
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const/4 v3, 0x2

    const-string v4, "Type_1X"

    invoke-direct {v0, v4, v3, v3}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    .line 23
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const/4 v4, 0x3

    const-string v5, "Type_1X3G"

    invoke-direct {v0, v5, v4, v4}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    .line 27
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const/4 v5, 0x4

    const-string v6, "Type_4G"

    invoke-direct {v0, v6, v5, v5}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    .line 31
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const/4 v6, 0x5

    const-string v7, "Type_E"

    invoke-direct {v0, v7, v6, v6}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_E:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    .line 35
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const/4 v7, 0x6

    const-string v8, "Type_4G_PLUS"

    invoke-direct {v0, v8, v7, v7}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    .line 39
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const/4 v8, 0x7

    const-string v9, "Type_5G"

    invoke-direct {v0, v9, v8, v8}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_5G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    .line 6
    sget-object v9, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    aput-object v9, v0, v1

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_E:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_5G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->$VALUES:[Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->mTypeId:I

    return-void
.end method

.method public static getNetworkType(Lcom/flyme/systemui/statusbar/ext/NetworkType;)Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    .line 49
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType$1;->$SwitchMap$com$flyme$systemui$statusbar$ext$NetworkType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_28

    return-object v0

    .line 65
    :pswitch_f  #0x8
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_5G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object p0

    .line 63
    :pswitch_12  #0x7
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object p0

    .line 61
    :pswitch_15  #0x6
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_E:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object p0

    .line 59
    :pswitch_18  #0x5
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object p0

    .line 57
    :pswitch_1b  #0x4
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object p0

    .line 55
    :pswitch_1e  #0x3
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object p0

    .line 53
    :pswitch_21  #0x2
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object p0

    .line 51
    :pswitch_24  #0x1
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object p0

    :cond_27
    return-object v0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24  #00000001
        :pswitch_21  #00000002
        :pswitch_1e  #00000003
        :pswitch_1b  #00000004
        :pswitch_18  #00000005
        :pswitch_15  #00000006
        :pswitch_12  #00000007
        :pswitch_f  #00000008
    .end packed-switch
.end method

.method public static isShow3G(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Z
    .registers 2

    .line 80
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isShow3Gor4G(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Z
    .registers 2

    .line 90
    invoke-static {p0}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->isShow3G(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->isShow4G(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static isShow4G(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Z
    .registers 2

    .line 99
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isShow5G(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;)Z
    .registers 2

    .line 108
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->Type_5G:Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;
    .registers 2

    .line 6
    const-class v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object p0
.end method

.method public static values()[Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;
    .registers 1

    .line 6
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->$VALUES:[Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    invoke-virtual {v0}, [Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;

    return-object v0
.end method
