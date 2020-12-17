.class final Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;
.super Ljava/lang/Object;
.source "NotificationMenuRow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForDrag"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)V
    .registers 2

    .line 566
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;)V
    .registers 3

    .line 566
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 570
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->getSpaceForMenu()I

    move-result v1

    int-to-float v1, v1

    .line 571
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->access$200(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ecccccd  # 0.4f

    mul-float/2addr v2, v3

    .line 572
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->isMenuVisible()Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->access$300(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)Z

    move-result v3

    if-eqz v3, :cond_45

    :cond_30
    float-to-double v3, v0

    float-to-double v5, v1

    const-wide v7, 0x3fd999999999999aL  # 0.4

    mul-double/2addr v5, v7

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_45

    cmpg-float v0, v0, v2

    if-gez v0, :cond_45

    .line 575
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->access$400(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;F)V

    :cond_45
    return-void
.end method
