.class Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$2;
.super Ljava/lang/Object;
.source "SystemUIGestureListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->hideToast()V
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

    .line 292
    iput-object p1, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$2;->this$0:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 295
    invoke-static {}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->access$000()Landroid/widget/Toast;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 296
    invoke-static {}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->access$000()Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    :cond_d
    return-void
.end method
