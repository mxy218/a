.class Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$1;
.super Ljava/lang/Object;
.source "SystemUIGestureListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->showToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$1;->this$0:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 283
    iget-object p0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$1;->this$0:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;

    invoke-static {p0}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->access$100(Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->swipe_again:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 284
    invoke-static {}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->access$000()Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
