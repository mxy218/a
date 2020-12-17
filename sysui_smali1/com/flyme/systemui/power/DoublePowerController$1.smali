.class Lcom/flyme/systemui/power/DoublePowerController$1;
.super Landroid/database/ContentObserver;
.source "DoublePowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/power/DoublePowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/power/DoublePowerController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/power/DoublePowerController;Landroid/os/Handler;)V
    .registers 3

    .line 105
    iput-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController$1;->this$0:Lcom/flyme/systemui/power/DoublePowerController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 108
    iget-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController$1;->this$0:Lcom/flyme/systemui/power/DoublePowerController;

    invoke-static {p1}, Lcom/flyme/systemui/power/DoublePowerController;->access$000(Lcom/flyme/systemui/power/DoublePowerController;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_double_click"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/flyme/systemui/power/DoublePowerController;->access$100(Lcom/flyme/systemui/power/DoublePowerController;I)V

    .line 109
    iget-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController$1;->this$0:Lcom/flyme/systemui/power/DoublePowerController;

    invoke-static {p1}, Lcom/flyme/systemui/power/DoublePowerController;->access$000(Lcom/flyme/systemui/power/DoublePowerController;)Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "FIRST_DOUBLE_POWER"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    iget-object p1, p0, Lcom/flyme/systemui/power/DoublePowerController$1;->this$0:Lcom/flyme/systemui/power/DoublePowerController;

    invoke-static {p1, v0}, Lcom/flyme/systemui/power/DoublePowerController;->access$202(Lcom/flyme/systemui/power/DoublePowerController;Z)Z

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DoublePowerType "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flyme/systemui/power/DoublePowerController$1;->this$0:Lcom/flyme/systemui/power/DoublePowerController;

    invoke-static {v0}, Lcom/flyme/systemui/power/DoublePowerController;->access$300(Lcom/flyme/systemui/power/DoublePowerController;)Lcom/flyme/systemui/power/DoublePowerController$DoublePowerType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",FirstDoublePower "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/flyme/systemui/power/DoublePowerController$1;->this$0:Lcom/flyme/systemui/power/DoublePowerController;

    invoke-static {p0}, Lcom/flyme/systemui/power/DoublePowerController;->access$200(Lcom/flyme/systemui/power/DoublePowerController;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DoublePowerController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
