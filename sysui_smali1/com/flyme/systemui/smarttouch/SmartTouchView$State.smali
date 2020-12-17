.class public final enum Lcom/flyme/systemui/smarttouch/SmartTouchView$State;
.super Ljava/lang/Enum;
.source "SmartTouchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flyme/systemui/smarttouch/SmartTouchView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

.field public static final enum CLICK:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

.field public static final enum DRAG:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

.field public static final enum NORMAL:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 22
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    const/4 v1, 0x0

    const-string v2, "CLICK"

    invoke-direct {v0, v2, v1}, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->CLICK:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    .line 26
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v2}, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->NORMAL:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    .line 30
    new-instance v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    const/4 v3, 0x2

    const-string v4, "DRAG"

    invoke-direct {v0, v4, v3}, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->DRAG:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    .line 18
    sget-object v4, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->CLICK:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    aput-object v4, v0, v1

    sget-object v1, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->NORMAL:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->DRAG:Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->$VALUES:[Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/systemui/smarttouch/SmartTouchView$State;
    .registers 2

    .line 18
    const-class v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    return-object p0
.end method

.method public static values()[Lcom/flyme/systemui/smarttouch/SmartTouchView$State;
    .registers 1

    .line 18
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->$VALUES:[Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    invoke-virtual {v0}, [Lcom/flyme/systemui/smarttouch/SmartTouchView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flyme/systemui/smarttouch/SmartTouchView$State;

    return-object v0
.end method
