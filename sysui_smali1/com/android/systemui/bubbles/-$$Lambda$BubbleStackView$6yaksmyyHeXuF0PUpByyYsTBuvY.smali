.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$6yaksmyyHeXuF0PUpByyYsTBuvY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;

.field private final synthetic f$1:Lcom/android/systemui/bubbles/Bubble;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/Bubble;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$6yaksmyyHeXuF0PUpByyYsTBuvY;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$6yaksmyyHeXuF0PUpByyYsTBuvY;->f$1:Lcom/android/systemui/bubbles/Bubble;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$6yaksmyyHeXuF0PUpByyYsTBuvY;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$6yaksmyyHeXuF0PUpByyYsTBuvY;->f$1:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateInFlyoutForBubble$16$BubbleStackView(Lcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method
