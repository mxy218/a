.class final enum Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;
.super Ljava/lang/Enum;
.source "EdgeBackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/fullscreen/views/EdgeBackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AnimatorStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

.field public static final enum DONE:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

.field public static final enum POP_BALL:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

.field public static final enum REL_DRAG:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

.field public static final enum SORB_BALL:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

.field public static final enum SPRING_UP:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 79
    new-instance v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    const/4 v1, 0x0

    const-string v2, "REL_DRAG"

    invoke-direct {v0, v2, v1}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;->REL_DRAG:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    .line 83
    new-instance v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    const/4 v2, 0x1

    const-string v3, "SPRING_UP"

    invoke-direct {v0, v3, v2}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;->SPRING_UP:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    .line 87
    new-instance v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    const/4 v3, 0x2

    const-string v4, "POP_BALL"

    invoke-direct {v0, v4, v3}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;->POP_BALL:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    .line 91
    new-instance v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    const/4 v4, 0x3

    const-string v5, "SORB_BALL"

    invoke-direct {v0, v5, v4}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;->SORB_BALL:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    .line 95
    new-instance v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    const/4 v5, 0x4

    const-string v6, "DONE"

    invoke-direct {v0, v6, v5}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;->DONE:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    .line 75
    sget-object v6, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;->REL_DRAG:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    aput-object v6, v0, v1

    sget-object v1, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;->SPRING_UP:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;->POP_BALL:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;->SORB_BALL:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;->DONE:Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;->$VALUES:[Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;
    .registers 2

    .line 75
    const-class v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    return-object p0
.end method

.method public static values()[Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;
    .registers 1

    .line 75
    sget-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;->$VALUES:[Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    invoke-virtual {v0}, [Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flyme/systemui/fullscreen/views/EdgeBackView$AnimatorStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 99
    sget-object v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView$3;->$SwitchMap$com$flyme$systemui$fullscreen$views$EdgeBackView$AnimatorStatus:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x2

    if-eq p0, v0, :cond_24

    const/4 v0, 0x3

    if-eq p0, v0, :cond_21

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1b

    const-string/jumbo p0, "unknown state"

    return-object p0

    :cond_1b
    const-string p0, "done!"

    return-object p0

    :cond_1e
    const-string p0, "drag ball!"

    return-object p0

    :cond_21
    const-string p0, "pop ball"

    return-object p0

    :cond_24
    const-string/jumbo p0, "spring up"

    return-object p0

    :cond_28
    const-string p0, "release drag"

    return-object p0
.end method
