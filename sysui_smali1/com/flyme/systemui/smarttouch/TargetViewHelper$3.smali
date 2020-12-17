.class Lcom/flyme/systemui/smarttouch/TargetViewHelper$3;
.super Ljava/lang/Object;
.source "TargetViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/TargetViewHelper;->animateOnUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$3;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$3;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->access$000(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 148
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$3;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    sget-object v0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;->RIGHT:Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;

    invoke-static {p0, v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->access$100(Lcom/flyme/systemui/smarttouch/TargetViewHelper;Lcom/flyme/systemui/smarttouch/TargetViewHelper$UserGesture;)V

    :cond_f
    return-void
.end method
