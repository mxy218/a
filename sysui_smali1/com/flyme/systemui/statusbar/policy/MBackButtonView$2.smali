.class Lcom/flyme/systemui/statusbar/policy/MBackButtonView$2;
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

    .line 194
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MBackButtonView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 197
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MBackButtonView;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->access$900(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)V

    return-void
.end method
