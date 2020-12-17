.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;
.super Ljava/lang/Object;
.source "ChannelEditorDialogController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelEditorDialogController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelEditorDialogController.kt\ncom/android/systemui/statusbar/notification/row/ChannelEditorDialogController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,312:1\n1574#2,2:313\n*E\n*S KotlinDebug\n*F\n+ 1 ChannelEditorDialogController.kt\ncom/android/systemui/statusbar/notification/row/ChannelEditorDialogController\n*L\n117#1,2:313\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0008\u00109\u001a\u00020:H\u0007J\u0010\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020\u000cH\u0002J\u0008\u0010=\u001a\u00020:H\u0002J\u0008\u0010>\u001a\u00020\u000cH\u0002J\u0006\u0010?\u001a\u00020:J\u0008\u0010@\u001a\u00020:H\u0002J\u000e\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u00160BH\u0002J\u001c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\"0D2\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u00160DH\u0002J\u0010\u0010F\u001a\u00020%2\u0008\u0010G\u001a\u0004\u0018\u00010\nJ\u0008\u0010H\u001a\u00020:H\u0002J\u0010\u0010I\u001a\u00020:2\u0006\u0010J\u001a\u00020KH\u0007J\u0016\u0010L\u001a\u00020:2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\"0NH\u0002J>\u0010O\u001a\u00020:2\u0006\u0010\t\u001a\u00020\n2\u0006\u00103\u001a\u00020\n2\u0006\u0010P\u001a\u00020\u00122\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\"0N2\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u00101\u001a\u0004\u0018\u000102J\u0016\u0010Q\u001a\u00020:2\u0006\u0010R\u001a\u00020\"2\u0006\u0010S\u001a\u00020\u0012J\u0008\u0010T\u001a\u00020:H\u0002J\u0018\u0010U\u001a\u00020:2\u0006\u0010R\u001a\u00020\"2\u0006\u0010V\u001a\u00020\u0012H\u0002J\u0006\u0010W\u001a\u00020:R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u000cX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u000e¢\u0006\u0004\n\u0002\u0010\u0013R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u0003¢\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX.¢\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u00120!X\u0004¢\u0006\u0002\n\u0000R8\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020%0$j\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020%`&8\u0000X\u0004¢\u0006\u000e\n\u0000\u0012\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u000e\u0010\u0004\u001a\u00020\u0005X\u0004¢\u0006\u0002\n\u0000R\u001c\u0010+\u001a\u0004\u0018\u00010,X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u0010\u00101\u001a\u0004\u0018\u000102X\u000e¢\u0006\u0002\n\u0000R\u0010\u00103\u001a\u0004\u0018\u00010\nX\u000e¢\u0006\u0002\n\u0000R\"\u00104\u001a\u0008\u0012\u0004\u0012\u00020\"0\u00158\u0000X\u0004¢\u0006\u000e\n\u0000\u0012\u0004\u00085\u0010(\u001a\u0004\u00086\u00107R\u000e\u00108\u001a\u00020\u0012XD¢\u0006\u0002\n\u0000¨\u0006X"
    }
    d2 = {
        "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
        "",
        "c",
        "Landroid/content/Context;",
        "noMan",
        "Landroid/app/INotificationManager;",
        "(Landroid/content/Context;Landroid/app/INotificationManager;)V",
        "appIcon",
        "Landroid/graphics/drawable/Drawable;",
        "appName",
        "",
        "appNotificationsEnabled",
        "",
        "getAppNotificationsEnabled",
        "()Z",
        "setAppNotificationsEnabled",
        "(Z)V",
        "appUid",
        "",
        "Ljava/lang/Integer;",
        "channelGroupList",
        "",
        "Landroid/app/NotificationChannelGroup;",
        "context",
        "getContext",
        "()Landroid/content/Context;",
        "dialog",
        "Landroid/app/Dialog;",
        "getDialog",
        "()Landroid/app/Dialog;",
        "setDialog",
        "(Landroid/app/Dialog;)V",
        "edits",
        "",
        "Landroid/app/NotificationChannel;",
        "groupNameLookup",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "groupNameLookup$annotations",
        "()V",
        "getGroupNameLookup$name",
        "()Ljava/util/HashMap;",
        "onFinishListener",
        "Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;",
        "getOnFinishListener",
        "()Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;",
        "setOnFinishListener",
        "(Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;)V",
        "onSettingsClickListener",
        "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;",
        "packageName",
        "providedChannels",
        "providedChannels$annotations",
        "getProvidedChannels$name",
        "()Ljava/util/List;",
        "wmFlags",
        "apply",
        "",
        "applyAppNotificationsOn",
        "b",
        "buildGroupNameLookup",
        "checkAreAppNotificationsOn",
        "close",
        "done",
        "fetchNotificationChannelGroups",
        "",
        "getDisplayableChannels",
        "Lkotlin/sequences/Sequence;",
        "groupList",
        "groupNameForId",
        "groupId",
        "initDialog",
        "launchSettings",
        "sender",
        "Landroid/view/View;",
        "padToFourChannels",
        "channels",
        "",
        "prepareDialogForApp",
        "uid",
        "proposeEditForChannel",
        "channel",
        "edit",
        "resetState",
        "setChannelImportance",
        "importance",
        "show",
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
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appName:Ljava/lang/String;

.field private appNotificationsEnabled:Z

.field private appUid:Ljava/lang/Integer;

.field private final channelGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field public dialog:Landroid/app/Dialog;

.field private final edits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/NotificationChannel;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final groupNameLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final noMan:Landroid/app/INotificationManager;

.field private onFinishListener:Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;

.field private onSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

.field private packageName:Ljava/lang/String;

.field private final providedChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final wmFlags:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/INotificationManager;)V
    .registers 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noMan"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->noMan:Landroid/app/INotificationManager;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "c.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->context:Landroid/content/Context;

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->providedChannels:Ljava/util/List;

    .line 83
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    .line 88
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->groupNameLookup:Ljava/util/HashMap;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channelGroupList:Ljava/util/List;

    const p1, -0x7efbff00

    .line 303
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->wmFlags:I

    return-void
.end method

.method private final applyAppNotificationsOn(Z)V
    .registers 5

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->noMan:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, v1, p0, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    goto :goto_23

    :cond_13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_1b

    throw v2

    :cond_17
    :try_start_17
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    throw v2

    :catch_1b
    move-exception p0

    const-string p1, "ChannelDialogController"

    const-string v0, "Error calling NoMan"

    .line 224
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    return-void
.end method

.method private final checkAreAppNotificationsOn()Z
    .registers 4

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->noMan:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0

    goto :goto_25

    :cond_14
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_1c

    throw v2

    :cond_18
    :try_start_18
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    throw v2

    :catch_1c
    move-exception p0

    const-string v0, "ChannelDialogController"

    const-string v1, "Error calling NoMan"

    .line 215
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method private final done()V
    .registers 1

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->resetState()V

    .line 174
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Landroid/app/Dialog;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_b
    const-string p0, "dialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic groupNameLookup$annotations()V
    .registers 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic providedChannels$annotations()V
    .registers 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final resetState()V
    .registers 2

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 179
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    .line 180
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    .line 181
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appName:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->providedChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->groupNameLookup:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private final setChannelImportance(Landroid/app/NotificationChannel;I)V
    .registers 5

    .line 230
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 231
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->noMan:Landroid/app/INotificationManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0, p1}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    goto :goto_26

    :cond_16
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1e

    throw v1

    :cond_1a
    :try_start_1a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    throw v1

    :catch_1e
    move-exception p0

    const-string p1, "ChannelDialogController"

    const-string p2, "Unable to update notification importance"

    .line 233
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return-void
.end method


# virtual methods
.method public final apply()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 240
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-eq v3, v1, :cond_a

    .line 241
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->setChannelImportance(Landroid/app/NotificationChannel;I)V

    goto :goto_a

    .line 245
    :cond_30
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->checkAreAppNotificationsOn()Z

    move-result v1

    if-eq v0, v1, :cond_3d

    .line 246
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->applyAppNotificationsOn(Z)V

    :cond_3d
    return-void
.end method

.method public final close()V
    .registers 1

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->done()V

    return-void
.end method

.method public final launchSettings(Landroid/view/View;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "sender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->onSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appUid:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, p1, v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;->onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V

    goto :goto_1a

    :cond_16
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_1a
    :goto_1a
    return-void
.end method

.method public final proposeEditForChannel(Landroid/app/NotificationChannel;I)V
    .registers 4

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-ne v0, p2, :cond_11

    .line 194
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 196
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1a
    return-void
.end method

.method public final setOnFinishListener(Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->onFinishListener:Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;

    return-void
.end method
