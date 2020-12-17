.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;
.super Landroid/widget/LinearLayout;
.source "ChannelEditorListView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelEditorListView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelEditorListView.kt\ncom/android/systemui/statusbar/notification/row/ChannelEditorListView\n*L\n1#1,184:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\'H\u0002J\u0008\u0010(\u001a\u00020$H\u0014J\u0010\u0010)\u001a\u00020$2\u0006\u0010*\u001a\u00020+H\u0002J\u0008\u0010,\u001a\u00020$H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X.¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R0\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u001eX.¢\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"¨\u0006-"
    }
    d2 = {
        "Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;",
        "Landroid/widget/LinearLayout;",
        "c",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "appControlRow",
        "Lcom/android/systemui/statusbar/notification/row/AppControlView;",
        "appIcon",
        "Landroid/graphics/drawable/Drawable;",
        "getAppIcon",
        "()Landroid/graphics/drawable/Drawable;",
        "setAppIcon",
        "(Landroid/graphics/drawable/Drawable;)V",
        "appName",
        "",
        "getAppName",
        "()Ljava/lang/String;",
        "setAppName",
        "(Ljava/lang/String;)V",
        "newValue",
        "",
        "Landroid/app/NotificationChannel;",
        "channels",
        "getChannels",
        "()Ljava/util/List;",
        "setChannels",
        "(Ljava/util/List;)V",
        "controller",
        "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
        "getController",
        "()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
        "setController",
        "(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V",
        "addChannelRow",
        "",
        "channel",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "onFinishInflate",
        "updateAppControlRow",
        "enabled",
        "",
        "updateRows",
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
.field private appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

.field private channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channels:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 58
    sget v0, Lcom/android/systemui/R$id;->app_control:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.app_control)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/AppControlView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

    return-void
.end method
