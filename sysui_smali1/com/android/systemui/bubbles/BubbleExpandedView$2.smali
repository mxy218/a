.class synthetic Lcom/android/systemui/bubbles/BubbleExpandedView$2;
.super Ljava/lang/Object;
.source "BubbleExpandedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleExpandedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$systemui$bubbles$BubbleExpandedView$ActivityViewStatus:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 119
    invoke-static {}, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->values()[Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/bubbles/BubbleExpandedView$2;->$SwitchMap$com$android$systemui$bubbles$BubbleExpandedView$ActivityViewStatus:[I

    :try_start_9
    sget-object v0, Lcom/android/systemui/bubbles/BubbleExpandedView$2;->$SwitchMap$com$android$systemui$bubbles$BubbleExpandedView$ActivityViewStatus:[I

    sget-object v1, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->INITIALIZING:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/android/systemui/bubbles/BubbleExpandedView$2;->$SwitchMap$com$android$systemui$bubbles$BubbleExpandedView$ActivityViewStatus:[I

    sget-object v1, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->INITIALIZED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/android/systemui/bubbles/BubbleExpandedView$2;->$SwitchMap$com$android$systemui$bubbles$BubbleExpandedView$ActivityViewStatus:[I

    sget-object v1, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->ACTIVITY_STARTED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
