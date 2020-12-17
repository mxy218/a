.class final Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1;
.super Ljava/lang/Object;
.source "ChannelEditorListView.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/ChannelRow;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelEditorListView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelEditorListView.kt\ncom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1\n*L\n1#1,184:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/CompoundButton;",
        "kotlin.jvm.PlatformType",
        "b",
        "",
        "onCheckedChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ChannelRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ChannelRow;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 155
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 156
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->getController()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    move-result-object p0

    if-eqz p2, :cond_15

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p2

    goto :goto_16

    :cond_15
    const/4 p2, 0x0

    :goto_16
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->proposeEditForChannel(Landroid/app/NotificationChannel;I)V

    :cond_19
    return-void
.end method
