.class public Lcom/android/settings/SetupWizardUtils;
.super Ljava/lang/Object;
.source "SetupWizardUtils.java"


# direct methods
.method public static copyLifecycleExtra(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    const-string v0, "firstRun"

    const-string v1, "isSetupFlow"

    .line 102
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_10

    :cond_25
    return-object p1
.end method

.method public static copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 2

    .line 97
    invoke-static {p0, p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-void
.end method

.method public static getTheme(Landroid/content/Intent;)I
    .registers 17

    .line 43
    invoke-static/range {p0 .. p0}, Lcom/android/settings/SetupWizardUtils;->getThemeString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f13012c

    if-eqz v0, :cond_c5

    .line 47
    invoke-static/range {p0 .. p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v2

    const v3, 0x7f13012e

    const v4, 0x7f130134

    const-string v5, "glif_light"

    const-string v6, "glif_v3"

    const-string v7, "glif_v2"

    const-string v8, "glif"

    const-string v9, "glif_v3_light"

    const-string v10, "glif_v2_light"

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v11, 0x1

    if-eqz v2, :cond_7c

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_c6

    goto :goto_5e

    :sswitch_2e
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    move v0, v13

    goto :goto_5f

    :sswitch_36
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    move v0, v11

    goto :goto_5f

    :sswitch_3e
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    move v0, v14

    goto :goto_5f

    :sswitch_46
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    move v0, v12

    goto :goto_5f

    :sswitch_4e
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v0, 0x0

    goto :goto_5f

    :sswitch_56
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    move v0, v15

    goto :goto_5f

    :cond_5e
    :goto_5e
    const/4 v0, -0x1

    :goto_5f
    if-eqz v0, :cond_78

    if-eq v0, v11, :cond_77

    if-eq v0, v15, :cond_73

    if-eq v0, v14, :cond_72

    if-eq v0, v13, :cond_6e

    if-eq v0, v12, :cond_6d

    goto/16 :goto_c5

    :cond_6d
    return v1

    :cond_6e
    const v0, 0x7f13012d

    return v0

    :cond_72
    return v3

    :cond_73
    const v0, 0x7f13012f

    return v0

    :cond_77
    return v4

    :cond_78
    const v0, 0x7f130136

    return v0

    .line 63
    :cond_7c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_e0

    goto :goto_b4

    :sswitch_84
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    move v0, v13

    goto :goto_b5

    :sswitch_8c
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    move v0, v11

    goto :goto_b5

    :sswitch_94
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    move v0, v14

    goto :goto_b5

    :sswitch_9c
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    move v0, v12

    goto :goto_b5

    :sswitch_a4
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    const/4 v0, 0x0

    goto :goto_b5

    :sswitch_ac
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    move v0, v15

    goto :goto_b5

    :cond_b4
    :goto_b4
    const/4 v0, -0x1

    :goto_b5
    if-eqz v0, :cond_c4

    if-eq v0, v11, :cond_c4

    if-eq v0, v15, :cond_c3

    if-eq v0, v14, :cond_c3

    if-eq v0, v13, :cond_c2

    if-eq v0, v12, :cond_c2

    goto :goto_c5

    :cond_c2
    return v1

    :cond_c3
    return v3

    :cond_c4
    return v4

    :cond_c5
    :goto_c5
    return v1

    :sswitch_data_c6
    .sparse-switch
        -0x7edf2f90 -> :sswitch_56
        -0x49f8f44f -> :sswitch_4e
        0x3074c2 -> :sswitch_46
        0x6e4af19 -> :sswitch_3e
        0x6e4af1a -> :sswitch_36
        0x2dc1f359 -> :sswitch_2e
    .end sparse-switch

    :sswitch_data_e0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_ac
        -0x49f8f44f -> :sswitch_a4
        0x3074c2 -> :sswitch_9c
        0x6e4af19 -> :sswitch_94
        0x6e4af1a -> :sswitch_8c
        0x2dc1f359 -> :sswitch_84
    .end sparse-switch
.end method

.method public static getThemeString(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "theme"

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_15

    .line 37
    invoke-static {}, Landroid/sysprop/SetupWizardProperties;->theme()Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_15
    return-object p0
.end method

.method public static getTransparentTheme(Landroid/content/Intent;)I
    .registers 2

    .line 80
    invoke-static {p0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p0

    const v0, 0x7f130134

    if-ne p0, v0, :cond_d

    const p0, 0x7f130138

    goto :goto_34

    :cond_d
    const v0, 0x7f130136

    if-ne p0, v0, :cond_16

    const p0, 0x7f130137

    goto :goto_34

    :cond_16
    const v0, 0x7f13012e

    if-ne p0, v0, :cond_1f

    const p0, 0x7f130131

    goto :goto_34

    :cond_1f
    const v0, 0x7f13012d

    if-ne p0, v0, :cond_28

    const p0, 0x7f1301bc

    goto :goto_34

    :cond_28
    const v0, 0x7f13012c

    if-ne p0, v0, :cond_31

    const p0, 0x7f1301bd

    goto :goto_34

    :cond_31
    const p0, 0x7f130130

    :goto_34
    return p0
.end method
