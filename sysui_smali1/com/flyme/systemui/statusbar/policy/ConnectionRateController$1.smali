.class Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;
.super Landroid/database/ContentObserver;
.source "ConnectionRateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;Landroid/os/Handler;)V
    .registers 3

    .line 77
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 80
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->access$000(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)V

    return-void
.end method
