.class Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$1;
.super Ljava/lang/Object;
.source "NotificationFilterPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->setNumberView(Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$1;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    const-string p1, "FilterPanel"

    const-string v0, "onClick: enter"

    .line 130
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$1;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->access$000(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V

    return-void
.end method
