.class final Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/notification/ZenModeSettingsBase;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/ZenModeSettingsBase;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    .line 104
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->access$100(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "zen_mode"

    .line 100
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string/jumbo p1, "zen_mode_config_etag"

    .line 101
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/ZenModeSettingsBase;Lcom/android/settings/notification/ZenModeSettingsBase$1;)V
    .registers 3

    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;-><init>(Lcom/android/settings/notification/ZenModeSettingsBase;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    .line 118
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 119
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 120
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->access$500(Lcom/android/settings/notification/ZenModeSettingsBase;Z)V

    .line 122
    :cond_11
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 123
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    iget-object p1, p1, Lcom/android/settings/notification/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {p1}, Lcom/android/settings/notification/ZenModeBackend;->updatePolicy()V

    .line 124
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onZenModeConfigChanged()V

    :cond_25
    return-void
.end method

.method public register()V
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->access$200(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->access$300(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/ZenModeSettingsBase;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->access$400(Lcom/android/settings/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
