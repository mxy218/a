.class final enum Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;
.super Ljava/lang/Enum;
.source "MiniHeadsupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HideState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

.field public static final enum Cancel:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

.field public static final enum Click:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

.field public static final enum Snooze:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 552
    new-instance v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    const/4 v1, 0x0

    const-string v2, "Cancel"

    invoke-direct {v0, v2, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Cancel:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    .line 556
    new-instance v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    const/4 v2, 0x1

    const-string v3, "Snooze"

    invoke-direct {v0, v3, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Snooze:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    .line 560
    new-instance v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    const/4 v3, 0x2

    const-string v4, "Click"

    invoke-direct {v0, v4, v3}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Click:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    .line 548
    sget-object v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Cancel:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Snooze:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Click:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->$VALUES:[Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 548
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;
    .registers 2

    .line 548
    const-class v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    return-object p0
.end method

.method public static values()[Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;
    .registers 1

    .line 548
    sget-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->$VALUES:[Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {v0}, [Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    return-object v0
.end method
