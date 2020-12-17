.class Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$1;
.super Landroid/os/Handler;
.source "SensorPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_35

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    const/4 v1, 0x4

    if-eq v0, v1, :cond_11

    goto :goto_3c

    .line 80
    :cond_11
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->access$400(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;FJ)V

    goto :goto_3c

    .line 71
    :cond_21
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->access$100(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;)V

    goto :goto_3c

    .line 68
    :cond_27
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->access$000(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;I)V

    goto :goto_3c

    .line 77
    :cond_2f
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->access$300(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;)V

    goto :goto_3c

    .line 74
    :cond_35
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$1;->this$0:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->access$200(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;I)V

    :goto_3c
    return-void
.end method
