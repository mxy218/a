.class final Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MzDonotDisturbPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_BREATH_LIGHT_URI:Landroid/net/Uri;

.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_HEADS_UP_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;

    .line 279
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "zen_mode"

    .line 271
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string p1, "zen_mode_config_etag"

    .line 272
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    const-string p1, "mz_do_not_disturb_wakeup_breath_light"

    .line 274
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->ZEN_MODE_BREATH_LIGHT_URI:Landroid/net/Uri;

    const-string p1, "mz_do_not_disturb_heads_up_notification"

    .line 276
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->ZEN_MODE_HEADS_UP_URI:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$1;)V
    .registers 3

    .line 270
    invoke-direct {p0, p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;-><init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 295
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 299
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 300
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->access$600(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)V

    .line 302
    :cond_10
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 303
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->access$700(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)V

    .line 305
    :cond_1d
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->ZEN_MODE_BREATH_LIGHT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 306
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->access$800(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)V

    .line 308
    :cond_2a
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->ZEN_MODE_HEADS_UP_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 309
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->access$900(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)V

    :cond_37
    return-void
.end method

.method public register()V
    .registers 4

    .line 283
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->access$100(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 284
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->access$200(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 285
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->access$300(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->ZEN_MODE_BREATH_LIGHT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 286
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->access$400(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->ZEN_MODE_HEADS_UP_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment$SettingsObserver;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;->access$500(Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
