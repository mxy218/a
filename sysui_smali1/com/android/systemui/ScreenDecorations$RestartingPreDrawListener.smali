.class Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestartingPreDrawListener"
.end annotation


# instance fields
.field private final mTargetRotation:I

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method private constructor <init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;I)V
    .registers 4

    .line 1136
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1137
    iput-object p2, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->mView:Landroid/view/View;

    .line 1138
    iput p3, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->mTargetRotation:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;ILcom/android/systemui/ScreenDecorations$1;)V
    .registers 5

    .line 1131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 3

    .line 1143
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1145
    iget v0, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->mTargetRotation:I

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$200(Lcom/android/systemui/ScreenDecorations;)I

    move-result v1

    if-ne v0, v1, :cond_15

    const/4 p0, 0x1

    return p0

    .line 1154
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->this$0:Lcom/android/systemui/ScreenDecorations;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/ScreenDecorations;->access$302(Lcom/android/systemui/ScreenDecorations;Z)Z

    .line 1157
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$500(Lcom/android/systemui/ScreenDecorations;)V

    .line 1162
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method
