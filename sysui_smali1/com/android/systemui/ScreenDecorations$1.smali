.class Lcom/android/systemui/ScreenDecorations$1;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ScreenDecorations;->startOnScreenDecorationsThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .registers 2

    .line 335
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 7

    .line 348
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p1, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result p1

    .line 349
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$000(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$100(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$200(Lcom/android/systemui/ScreenDecorations;)I

    move-result v0

    if-eq v0, p1, :cond_57

    .line 357
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/ScreenDecorations;->access$302(Lcom/android/systemui/ScreenDecorations;Z)Z

    .line 363
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$000(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 364
    invoke-static {v2}, Lcom/android/systemui/ScreenDecorations;->access$000(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;ILcom/android/systemui/ScreenDecorations$1;)V

    .line 363
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$100(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 366
    invoke-static {v2}, Lcom/android/systemui/ScreenDecorations;->access$100(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;ILcom/android/systemui/ScreenDecorations$1;)V

    .line 365
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 368
    :cond_57
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$500(Lcom/android/systemui/ScreenDecorations;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
