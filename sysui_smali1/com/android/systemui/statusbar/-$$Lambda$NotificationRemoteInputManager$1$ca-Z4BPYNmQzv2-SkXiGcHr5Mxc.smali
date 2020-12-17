.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$ca-Z4BPYNmQzv2-SkXiGcHr5Mxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:Landroid/app/PendingIntent;

.field private final synthetic f$3:Landroid/widget/RemoteViews$RemoteResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$ca-Z4BPYNmQzv2-SkXiGcHr5Mxc;->f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$ca-Z4BPYNmQzv2-SkXiGcHr5Mxc;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$ca-Z4BPYNmQzv2-SkXiGcHr5Mxc;->f$2:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$ca-Z4BPYNmQzv2-SkXiGcHr5Mxc;->f$3:Landroid/widget/RemoteViews$RemoteResponse;

    return-void
.end method


# virtual methods
.method public final handleClick()Z
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$ca-Z4BPYNmQzv2-SkXiGcHr5Mxc;->f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$ca-Z4BPYNmQzv2-SkXiGcHr5Mxc;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$ca-Z4BPYNmQzv2-SkXiGcHr5Mxc;->f$2:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$ca-Z4BPYNmQzv2-SkXiGcHr5Mxc;->f$3:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->lambda$onClickHandler$0$NotificationRemoteInputManager$1(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p0

    return p0
.end method
