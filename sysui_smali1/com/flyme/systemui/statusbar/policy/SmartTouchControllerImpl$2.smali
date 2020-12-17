.class Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$2;
.super Lcom/flyme/systemui/smarttouch/SmartTouchComponent;
.source "SmartTouchControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;Landroid/content/Context;)V
    .registers 3

    .line 46
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;

    invoke-direct {p0, p2}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUpdateViews(Z)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;

    invoke-static {v0, p1}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->access$002(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;Z)Z

    .line 50
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->access$200(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;)V

    return-void
.end method
