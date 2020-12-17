.class public final Lcom/android/systemui/statusbar/notification/row/ChannelRow;
.super Landroid/widget/LinearLayout;
.source "ChannelEditorListView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelEditorListView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelEditorListView.kt\ncom/android/systemui/statusbar/notification/row/ChannelRow\n*L\n1#1,184:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0008\u0010\u001f\u001a\u00020 H\u0014J\u0008\u0010!\u001a\u00020 H\u0002J\u0008\u0010\"\u001a\u00020 H\u0002R(\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX.¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX.¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u00020\u0012X.¢\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001eX.¢\u0006\u0002\n\u0000¨\u0006#"
    }
    d2 = {
        "Lcom/android/systemui/statusbar/notification/row/ChannelRow;",
        "Landroid/widget/LinearLayout;",
        "c",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "newValue",
        "Landroid/app/NotificationChannel;",
        "channel",
        "getChannel",
        "()Landroid/app/NotificationChannel;",
        "setChannel",
        "(Landroid/app/NotificationChannel;)V",
        "channelDescription",
        "Landroid/widget/TextView;",
        "channelName",
        "controller",
        "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
        "getController",
        "()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
        "setController",
        "(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V",
        "gentle",
        "",
        "getGentle",
        "()Z",
        "setGentle",
        "(Z)V",
        "switch",
        "Landroid/widget/Switch;",
        "onFinishInflate",
        "",
        "updateImportance",
        "updateViews",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private channel:Landroid/app/NotificationChannel;

.field private channelDescription:Landroid/widget/TextView;

.field private channelName:Landroid/widget/TextView;

.field public controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

.field private switch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getChannel()Landroid/app/NotificationChannel;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channel:Landroid/app/NotificationChannel;

    return-object p0
.end method

.method public final getController()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "controller"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 151
    sget v0, Lcom/android/systemui/R$id;->channel_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.channel_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelName:Landroid/widget/TextView;

    .line 152
    sget v0, Lcom/android/systemui/R$id;->channel_description:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.channel_description)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelDescription:Landroid/widget/TextView;

    .line 153
    sget v0, Lcom/android/systemui/R$id;->toggle:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.toggle)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->switch:Landroid/widget/Switch;

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->switch:Landroid/widget/Switch;

    if-eqz v0, :cond_3a

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelRow;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_3a
    const-string/jumbo p0, "switch"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
