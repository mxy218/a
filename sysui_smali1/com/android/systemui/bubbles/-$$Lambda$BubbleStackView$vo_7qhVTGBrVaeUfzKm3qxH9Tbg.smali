.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$vo_7qhVTGBrVaeUfzKm3qxH9Tbg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleStackView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$vo_7qhVTGBrVaeUfzKm3qxH9Tbg;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$vo_7qhVTGBrVaeUfzKm3qxH9Tbg;->f$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->lambda$animateExpansion$10$BubbleStackView()V

    return-void
.end method
