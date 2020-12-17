.class final Lcom/android/systemui/bubbles/BubbleData$Update;
.super Ljava/lang/Object;
.source "BubbleData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Update"
.end annotation


# instance fields
.field addedBubble:Lcom/android/systemui/bubbles/Bubble;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final bubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field expanded:Z

.field expandedChanged:Z

.field orderChanged:Z

.field final removedBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/systemui/bubbles/Bubble;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field selectedBubble:Lcom/android/systemui/bubbles/Bubble;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field selectionChanged:Z

.field updatedBubble:Lcom/android/systemui/bubbles/Bubble;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    .line 84
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/android/systemui/bubbles/BubbleData$1;)V
    .registers 3

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData$Update;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method anythingChanged()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->expandedChanged:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->selectionChanged:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->addedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    .line 92
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method bubbleRemoved(Lcom/android/systemui/bubbles/Bubble;I)V
    .registers 4

    .line 97
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
