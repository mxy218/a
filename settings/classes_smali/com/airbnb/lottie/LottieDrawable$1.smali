.class Lcom/airbnb/lottie/LottieDrawable$1;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$1;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 119
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$1;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    invoke-static {p1}, Lcom/airbnb/lottie/LottieDrawable;->access$000(Lcom/airbnb/lottie/LottieDrawable;)Lcom/airbnb/lottie/model/layer/CompositionLayer;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 120
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$1;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    invoke-static {p1}, Lcom/airbnb/lottie/LottieDrawable;->access$000(Lcom/airbnb/lottie/LottieDrawable;)Lcom/airbnb/lottie/model/layer/CompositionLayer;

    move-result-object p1

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable$1;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    invoke-static {p0}, Lcom/airbnb/lottie/LottieDrawable;->access$100(Lcom/airbnb/lottie/LottieDrawable;)Lcom/airbnb/lottie/utils/LottieValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setProgress(F)V

    :cond_1b
    return-void
.end method
