.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$teKPwZsisPEy_xe6GOkT6_qDAEk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;

.field private final synthetic f$1:Lcom/android/systemui/bubbles/Bubble;

.field private final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/Bubble;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$teKPwZsisPEy_xe6GOkT6_qDAEk;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$teKPwZsisPEy_xe6GOkT6_qDAEk;->f$1:Lcom/android/systemui/bubbles/Bubble;

    iput-object p3, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$teKPwZsisPEy_xe6GOkT6_qDAEk;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$teKPwZsisPEy_xe6GOkT6_qDAEk;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$teKPwZsisPEy_xe6GOkT6_qDAEk;->f$1:Lcom/android/systemui/bubbles/Bubble;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$teKPwZsisPEy_xe6GOkT6_qDAEk;->f$2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateInFlyoutForBubble$18$BubbleStackView(Lcom/android/systemui/bubbles/Bubble;Ljava/lang/CharSequence;)V

    return-void
.end method
