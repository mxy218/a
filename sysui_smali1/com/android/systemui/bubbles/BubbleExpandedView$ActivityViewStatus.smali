.class final enum Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;
.super Ljava/lang/Enum;
.source "BubbleExpandedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleExpandedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActivityViewStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

.field public static final enum ACTIVITY_STARTED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

.field public static final enum INITIALIZED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

.field public static final enum INITIALIZING:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

.field public static final enum RELEASED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 66
    new-instance v0, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    const/4 v1, 0x0

    const-string v2, "INITIALIZING"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->INITIALIZING:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    .line 68
    new-instance v0, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    const/4 v2, 0x1

    const-string v3, "INITIALIZED"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->INITIALIZED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    .line 70
    new-instance v0, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    const/4 v3, 0x2

    const-string v4, "ACTIVITY_STARTED"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->ACTIVITY_STARTED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    .line 72
    new-instance v0, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    const/4 v4, 0x3

    const-string v5, "RELEASED"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->RELEASED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    .line 64
    sget-object v5, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->INITIALIZING:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->INITIALIZED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->ACTIVITY_STARTED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->RELEASED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->$VALUES:[Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;
    .registers 2

    .line 64
    const-class v0, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;
    .registers 1

    .line 64
    sget-object v0, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->$VALUES:[Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    invoke-virtual {v0}, [Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    return-object v0
.end method
