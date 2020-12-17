.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$e34XM71IP6gJFzDCLRuPf64iTJU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$e34XM71IP6gJFzDCLRuPf64iTJU;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$e34XM71IP6gJFzDCLRuPf64iTJU;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$e34XM71IP6gJFzDCLRuPf64iTJU;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$e34XM71IP6gJFzDCLRuPf64iTJU;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$magnetToStackIfNeededThenAnimateDismissal$12$BubbleStackView(Ljava/lang/Runnable;)V

    return-void
.end method
