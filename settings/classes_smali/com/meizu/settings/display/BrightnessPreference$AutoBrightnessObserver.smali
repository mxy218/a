.class Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoBrightnessObserver"
.end annotation


# instance fields
.field private final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/meizu/settings/display/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/BrightnessPreference;Landroid/os/Handler;)V
    .registers 3

    .line 292
    iput-object p1, p0, Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;->this$0:Lcom/meizu/settings/display/BrightnessPreference;

    .line 293
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "screen_brightness_mode"

    .line 286
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen_brightness"

    .line 288
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    const-string/jumbo p1, "screen_auto_brightness_adj"

    .line 290
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 298
    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    if-nez p1, :cond_c

    .line 304
    iget-object p1, p0, Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;->this$0:Lcom/meizu/settings/display/BrightnessPreference;

    invoke-static {p1}, Lcom/meizu/settings/display/BrightnessPreference;->access$300(Lcom/meizu/settings/display/BrightnessPreference;)V

    .line 305
    iget-object p0, p0, Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;->this$0:Lcom/meizu/settings/display/BrightnessPreference;

    invoke-static {p0}, Lcom/meizu/settings/display/BrightnessPreference;->access$400(Lcom/meizu/settings/display/BrightnessPreference;)V

    :cond_c
    return-void
.end method

.method public startObserving()V
    .registers 5

    .line 310
    iget-object v0, p0, Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;->this$0:Lcom/meizu/settings/display/BrightnessPreference;

    invoke-static {v0}, Lcom/meizu/settings/display/BrightnessPreference;->access$000(Lcom/meizu/settings/display/BrightnessPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 311
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 312
    iget-object v1, p0, Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 315
    iget-object v1, p0, Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 318
    iget-object v1, p0, Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public stopObserving()V
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;->this$0:Lcom/meizu/settings/display/BrightnessPreference;

    invoke-static {v0}, Lcom/meizu/settings/display/BrightnessPreference;->access$000(Lcom/meizu/settings/display/BrightnessPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 325
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
