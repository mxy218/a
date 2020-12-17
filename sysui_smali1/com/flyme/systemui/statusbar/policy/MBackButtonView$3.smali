.class Lcom/flyme/systemui/statusbar/policy/MBackButtonView$3;
.super Landroid/database/ContentObserver;
.source "MBackButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/MBackButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/MBackButtonView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;Landroid/os/Handler;)V
    .registers 3

    .line 200
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$3;->this$0:Lcom/flyme/systemui/statusbar/policy/MBackButtonView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 203
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$3;->this$0:Lcom/flyme/systemui/statusbar/policy/MBackButtonView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$1100(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$1002(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;Z)Z

    .line 204
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$3;->this$0:Lcom/flyme/systemui/statusbar/policy/MBackButtonView;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$1300(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$1202(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;I)I

    return-void
.end method
