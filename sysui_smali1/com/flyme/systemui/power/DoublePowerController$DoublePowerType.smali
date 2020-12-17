.class public final enum Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;
.super Ljava/lang/Enum;
.source "DoublePowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/power/DoublePowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DoublePowerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

.field public static final enum CAMERA:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

.field public static final enum MEIZU_PAY:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

.field public static final enum NONE:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

.field public static final enum SMART_VOICE:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

.field public static final enum VOICE:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 58
    new-instance v0, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    const/4 v1, 0x0

    const-string v2, "MEIZU_PAY"

    invoke-direct {v0, v2, v1}, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->MEIZU_PAY:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    .line 62
    new-instance v0, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    const/4 v2, 0x1

    const-string v3, "VOICE"

    invoke-direct {v0, v3, v2}, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->VOICE:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    .line 66
    new-instance v0, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    const/4 v3, 0x2

    const-string v4, "CAMERA"

    invoke-direct {v0, v4, v3}, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->CAMERA:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    .line 70
    new-instance v0, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    const/4 v4, 0x3

    const-string v5, "NONE"

    invoke-direct {v0, v5, v4}, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->NONE:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    .line 74
    new-instance v0, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    const/4 v5, 0x4

    const-string v6, "SMART_VOICE"

    invoke-direct {v0, v6, v5}, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->SMART_VOICE:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    .line 54
    sget-object v6, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->MEIZU_PAY:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->VOICE:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->CAMERA:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->NONE:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->SMART_VOICE:Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->$VALUES:[Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;
    .registers 2

    .line 54
    const-class v0, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    return-object p0
.end method

.method public static values()[Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;
    .registers 1

    .line 54
    sget-object v0, Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->$VALUES:[Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    invoke-virtual {v0}, [Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    return-object v0
.end method
