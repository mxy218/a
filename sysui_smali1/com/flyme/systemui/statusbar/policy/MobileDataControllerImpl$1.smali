.class Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "MobileDataControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;Landroid/os/Handler;)V
    .registers 3

    .line 312
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 315
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;->access$000(Lcom/flyme/systemui/statusbar/policy/MobileDataControllerImpl;)V

    return-void
.end method
