.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$VsGw7yinvO7eM-lSnQkbAlXJJig;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$VsGw7yinvO7eM-lSnQkbAlXJJig;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$VsGw7yinvO7eM-lSnQkbAlXJJig;->f$1:I

    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$VsGw7yinvO7eM-lSnQkbAlXJJig;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$VsGw7yinvO7eM-lSnQkbAlXJJig;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$VsGw7yinvO7eM-lSnQkbAlXJJig;->f$1:I

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$VsGw7yinvO7eM-lSnQkbAlXJJig;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->lambda$handleSaveImportance$5$NotificationInfo(II)V

    return-void
.end method
