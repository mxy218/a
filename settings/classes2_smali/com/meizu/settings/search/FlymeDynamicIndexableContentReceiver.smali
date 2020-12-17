.class public Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FlymeDynamicIndexableContentReceiver.java"


# static fields
.field private static final ACCESSIBILITY_DYNAMIC_ITEM_PACKAGE:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "com.meizu.net.search"

    const-string v1, "com.meizu.remotecooperation"

    const-string v2, "com.meizu.voiceassistant"

    .line 32
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->ACCESSIBILITY_DYNAMIC_ITEM_PACKAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 70
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method private handlePackageChange(Ljava/lang/String;)V
    .registers 3

    .line 75
    sget-object v0, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->ACCESSIBILITY_DYNAMIC_ITEM_PACKAGE:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 76
    invoke-direct {p0}, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->refreshAccessibilityPageIndex()V

    :cond_b
    return-void
.end method

.method private refreshAccessibilityPageIndex()V
    .registers 2

    .line 85
    const-class v0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->updateIndex(Ljava/lang/String;)V

    return-void
.end method

.method private refreshApplicationManagementPageIndex()V
    .registers 2

    .line 89
    const-class v0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->updateIndex(Ljava/lang/String;)V

    return-void
.end method

.method private refreshDisplayPageIndex()V
    .registers 2

    .line 97
    const-class v0, Lcom/meizu/settings/display/MzDisplaySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->updateIndex(Ljava/lang/String;)V

    return-void
.end method

.method private refreshNotificationStatusbarPageIndex()V
    .registers 2

    .line 93
    const-class v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->updateIndex(Ljava/lang/String;)V

    return-void
.end method

.method private refreshSecurityPageIndex()V
    .registers 2

    .line 81
    const-class v0, Lcom/meizu/settings/security/FlymeSecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->updateIndex(Ljava/lang/String;)V

    return-void
.end method

.method private updateIndex(Ljava/lang/String;)V
    .registers 4

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeDynamicIndexableContentReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFlymeSearchFeatureProvider()Lcom/meizu/settings/search/SearchFeatureProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/meizu/settings/search/SearchFeatureProvider;->getIndexingManager(Landroid/content/Context;)Lcom/meizu/settings/search/DatabaseIndexingManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/search/DatabaseIndexingManager;->updateFromClassNameResource(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 40
    iput-object p1, p0, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeDynamicIndexableContentReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct {p0, p2}, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_84

    :cond_39
    const-string p2, "meizu.intent.action.UPDATE_SECURITY_PAGE_INDEX"

    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_80

    const-string p2, "meizu.intent.action.SWITCH_PRIVATE_MODE"

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4a

    goto :goto_80

    :cond_4a
    const-string p2, "meizu.intent.action.UPDATE_ACCESSIBILITY_PAGE_INDEX"

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_56

    .line 56
    invoke-direct {p0}, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->refreshAccessibilityPageIndex()V

    goto :goto_87

    :cond_56
    const-string p2, "com.meizu.flyme.easylauncher.ACTION_EASY_MODE_CHANGE"

    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_68

    .line 58
    invoke-direct {p0}, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->refreshNotificationStatusbarPageIndex()V

    .line 59
    invoke-direct {p0}, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->refreshAccessibilityPageIndex()V

    .line 60
    invoke-direct {p0}, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->refreshApplicationManagementPageIndex()V

    goto :goto_87

    :cond_68
    const-string p2, "meizu.intent.action.UPDATE_DISPLAY_PAGE_INDEX"

    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_74

    .line 62
    invoke-direct {p0}, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->refreshDisplayPageIndex()V

    goto :goto_87

    :cond_74
    const-string p2, "meizu.intent.action.UPDATE_NOTIFICATION_PAGE_INDEX"

    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_87

    .line 64
    invoke-direct {p0}, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->refreshNotificationStatusbarPageIndex()V

    goto :goto_87

    .line 54
    :cond_80
    :goto_80
    invoke-direct {p0}, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->refreshSecurityPageIndex()V

    goto :goto_87

    .line 51
    :cond_84
    :goto_84
    invoke-direct {p0, p2}, Lcom/meizu/settings/search/FlymeDynamicIndexableContentReceiver;->handlePackageChange(Ljava/lang/String;)V

    :cond_87
    :goto_87
    return-void
.end method
