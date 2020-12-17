.class Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$3;
.super Ljava/lang/Object;
.source "SensorPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 98
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$3;->this$0:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$3;->this$0:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->access$600(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "SensorPolicy"

    const-string v1, "mDisableLightRunnable.run"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$3;->this$0:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->access$100(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;)V

    :cond_14
    return-void
.end method
