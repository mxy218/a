.class final enum Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;
.super Ljava/lang/Enum;
.source "FlymeHeadsupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/headsup/FlymeHeadsupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LuckyMoneyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

.field public static final enum ALIPAY:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

.field public static final enum QQ:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

.field public static final enum SYSTEM:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

.field public static final enum TIM:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

.field public static final enum WECHAT:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 108
    new-instance v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    const/4 v1, 0x0

    const-string v2, "WECHAT"

    invoke-direct {v0, v2, v1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->WECHAT:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    .line 112
    new-instance v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    const/4 v2, 0x1

    const-string v3, "ALIPAY"

    invoke-direct {v0, v3, v2}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->ALIPAY:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    .line 116
    new-instance v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    const/4 v3, 0x2

    const-string v4, "QQ"

    invoke-direct {v0, v4, v3}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->QQ:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    .line 120
    new-instance v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    const/4 v4, 0x3

    const-string v5, "TIM"

    invoke-direct {v0, v5, v4}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->TIM:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    .line 124
    new-instance v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    const/4 v5, 0x4

    const-string v6, "SYSTEM"

    invoke-direct {v0, v6, v5}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->SYSTEM:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    .line 104
    sget-object v6, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->WECHAT:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->ALIPAY:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->QQ:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->TIM:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->SYSTEM:Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->$VALUES:[Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;
    .registers 2

    .line 104
    const-class v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    return-object p0
.end method

.method public static values()[Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;
    .registers 1

    .line 104
    sget-object v0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->$VALUES:[Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    invoke-virtual {v0}, [Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flyme/systemui/headsup/FlymeHeadsupManager$LuckyMoneyType;

    return-object v0
.end method
