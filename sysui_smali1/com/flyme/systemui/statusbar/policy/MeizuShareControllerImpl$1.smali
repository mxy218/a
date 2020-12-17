.class Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "MeizuShareControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;Landroid/os/Handler;)V
    .registers 3

    .line 27
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 30
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;->access$000(Lcom/flyme/systemui/statusbar/policy/MeizuShareControllerImpl;)V

    return-void
.end method
