.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wCioQyOrJp7EuggzuABQDC4qQPs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;

.field private final synthetic f$1:Lcom/android/systemui/bubbles/Bubble;

.field private final synthetic f$2:Lcom/android/systemui/bubbles/Bubble;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/Bubble;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wCioQyOrJp7EuggzuABQDC4qQPs;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wCioQyOrJp7EuggzuABQDC4qQPs;->f$1:Lcom/android/systemui/bubbles/Bubble;

    iput-object p3, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wCioQyOrJp7EuggzuABQDC4qQPs;->f$2:Lcom/android/systemui/bubbles/Bubble;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wCioQyOrJp7EuggzuABQDC4qQPs;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wCioQyOrJp7EuggzuABQDC4qQPs;->f$1:Lcom/android/systemui/bubbles/Bubble;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wCioQyOrJp7EuggzuABQDC4qQPs;->f$2:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$setSelectedBubble$8$BubbleStackView(Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method
