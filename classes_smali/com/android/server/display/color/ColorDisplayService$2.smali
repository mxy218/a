.class Lcom/android/server/display/color/ColorDisplayService$2;
.super Landroid/database/ContentObserver;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/color/ColorDisplayService;->setUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;)V
    .registers 3

    .line 306
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    .line 309
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 311
    if-nez p2, :cond_7

    const/4 p1, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 312
    :goto_b
    if-eqz p1, :cond_12c

    .line 313
    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_12e

    :cond_15
    goto/16 :goto_81

    :sswitch_17
    const-string/jumbo v0, "night_display_custom_start_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p2, 0x3

    goto :goto_81

    :sswitch_22
    const-string v0, "display_color_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p2, 0x5

    goto :goto_81

    :sswitch_2c
    const-string v0, "display_white_balance_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/16 p2, 0x9

    goto :goto_81

    :sswitch_37
    const-string/jumbo v0, "night_display_activated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p2, 0x0

    goto :goto_81

    :sswitch_42
    const-string v0, "accessibility_display_daltonizer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/16 p2, 0x8

    goto :goto_81

    :sswitch_4d
    const-string v0, "accessibility_display_inversion_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p2, 0x6

    goto :goto_81

    :sswitch_57
    const-string v0, "accessibility_display_daltonizer_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p2, 0x7

    goto :goto_81

    :sswitch_61
    const-string/jumbo v0, "night_display_color_temperature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p2, 0x1

    goto :goto_81

    :sswitch_6c
    const-string/jumbo v0, "night_display_custom_end_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p2, 0x4

    goto :goto_81

    :sswitch_77
    const-string/jumbo v0, "night_display_auto_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p2, 0x2

    :goto_81
    packed-switch p2, :pswitch_data_158

    goto/16 :goto_12c

    .line 357
    :pswitch_86  #0x9
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    goto/16 :goto_12c

    .line 354
    :pswitch_8d  #0x8
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$1900(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 355
    goto/16 :goto_12c

    .line 350
    :pswitch_94  #0x7
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$1900(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 351
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$1800(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 352
    goto/16 :goto_12c

    .line 346
    :pswitch_a0  #0x6
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$1700(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 347
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$1800(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 348
    goto/16 :goto_12c

    .line 343
    :pswitch_ac  #0x5
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$1500(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->access$1600(Lcom/android/server/display/color/ColorDisplayService;I)V

    .line 344
    goto/16 :goto_12c

    .line 339
    :pswitch_b7  #0x4
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 340
    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$1300(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object p2

    .line 339
    invoke-static {p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->access$1400(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V

    .line 341
    goto :goto_12c

    .line 335
    :pswitch_c5  #0x3
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 336
    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$1100(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object p2

    .line 335
    invoke-static {p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->access$1200(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V

    .line 337
    goto :goto_12c

    .line 332
    :pswitch_d3  #0x2
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$900(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->access$1000(Lcom/android/server/display/color/ColorDisplayService;I)V

    .line 333
    goto :goto_12c

    .line 323
    :pswitch_dd  #0x1
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result p1

    .line 325
    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperature()I

    move-result p2

    if-eq p2, p1, :cond_12c

    .line 327
    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p2

    .line 328
    invoke-virtual {p2, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->onColorTemperatureChanged(I)V

    goto :goto_12c

    .line 315
    :pswitch_fd  #0x0
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result p1

    .line 317
    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedStateNotSet()Z

    move-result p2

    if-nez p2, :cond_11f

    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 318
    invoke-static {p2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result p2

    if-eq p2, p1, :cond_12c

    .line 319
    :cond_11f
    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 361
    :cond_12c
    :goto_12c
    return-void

    nop

    :sswitch_data_12e
    .sparse-switch
        -0x797bb571 -> :sswitch_77
        -0x6900ebe5 -> :sswitch_6c
        -0x39c8c50c -> :sswitch_61
        -0x28f198ce -> :sswitch_57
        -0x20db1ad9 -> :sswitch_4d
        0x1ccf6530 -> :sswitch_42
        0x2fb0ca2d -> :sswitch_37
        0x425e310b -> :sswitch_2c
        0x5d15789c -> :sswitch_22
        0x5e128274 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_fd  #00000000
        :pswitch_dd  #00000001
        :pswitch_d3  #00000002
        :pswitch_c5  #00000003
        :pswitch_b7  #00000004
        :pswitch_ac  #00000005
        :pswitch_a0  #00000006
        :pswitch_94  #00000007
        :pswitch_8d  #00000008
        :pswitch_86  #00000009
    .end packed-switch
.end method
