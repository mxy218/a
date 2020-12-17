.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uiE_eB5rfJqPQTRnM4IXJFU-4Tg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleFlyoutView;

.field private final synthetic f$1:Landroid/graphics/PointF;

.field private final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uiE_eB5rfJqPQTRnM4IXJFU-4Tg;->f$0:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iput-object p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uiE_eB5rfJqPQTRnM4IXJFU-4Tg;->f$1:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uiE_eB5rfJqPQTRnM4IXJFU-4Tg;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uiE_eB5rfJqPQTRnM4IXJFU-4Tg;->f$0:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uiE_eB5rfJqPQTRnM4IXJFU-4Tg;->f$1:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uiE_eB5rfJqPQTRnM4IXJFU-4Tg;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->lambda$setupFlyoutStartingAsDot$0$BubbleFlyoutView(Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    return-void
.end method
