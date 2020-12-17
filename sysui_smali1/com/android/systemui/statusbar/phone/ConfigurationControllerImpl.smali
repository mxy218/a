.class public final Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;
.super Ljava/lang/Object;
.source "ConfigurationControllerImpl.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController;
.implements Lcom/android/systemui/ConfigurationChangedReceiver;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigurationControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigurationControllerImpl.kt\ncom/android/systemui/statusbar/phone/ConfigurationControllerImpl\n+ 2 ConfigurationControllerImpl.kt\ncom/android/systemui/statusbar/phone/ConfigurationControllerImplKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n118#2:125\n119#2,4:127\n123#2:132\n118#2:133\n119#2,4:135\n123#2:140\n118#2:141\n119#2,4:143\n123#2:148\n118#2:149\n119#2,4:151\n123#2:156\n118#2:157\n119#2,4:159\n123#2:164\n118#2:165\n119#2,4:167\n123#2:172\n1574#3:126\n1575#3:131\n1574#3:134\n1575#3:139\n1574#3:142\n1575#3:147\n1574#3:150\n1575#3:155\n1574#3:158\n1575#3:163\n1574#3:166\n1575#3:171\n*E\n*S KotlinDebug\n*F\n+ 1 ConfigurationControllerImpl.kt\ncom/android/systemui/statusbar/phone/ConfigurationControllerImpl\n*L\n53#1:125\n53#1,4:127\n53#1:132\n62#1:133\n62#1,4:135\n62#1:140\n71#1:141\n71#1,4:143\n71#1:148\n81#1:149\n81#1,4:151\n81#1:156\n92#1:157\n92#1,4:159\n92#1:164\n98#1:165\n98#1,4:167\n98#1:172\n53#1:126\n53#1:131\n62#1:134\n62#1:139\n71#1:142\n71#1:147\n81#1:150\n81#1:155\n92#1:158\n92#1:163\n98#1:166\n98#1:171\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0010H\u0016J\u0008\u0010\u0017\u001a\u00020\u0015H\u0016J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\rH\u0016J\u0010\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0010H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0007X\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"
    }
    d2 = {
        "Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;",
        "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
        "Lcom/android/systemui/ConfigurationChangedReceiver;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "density",
        "",
        "fontScale",
        "",
        "inCarMode",
        "",
        "lastConfig",
        "Landroid/content/res/Configuration;",
        "listeners",
        "",
        "Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;",
        "localeList",
        "Landroid/os/LocaleList;",
        "uiMode",
        "addCallback",
        "",
        "listener",
        "notifyThemeChanged",
        "onConfigurationChanged",
        "newConfig",
        "removeCallback",
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
.field private final context:Landroid/content/Context;

.field private density:I

.field private fontScale:F

.field private final inCarMode:Z

.field private final lastConfig:Landroid/content/res/Configuration;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private localeList:Landroid/os/LocaleList;

.field private uiMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    .line 31
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->lastConfig:Landroid/content/res/Configuration;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->context:Landroid/content/Context;

    .line 42
    iget p1, v0, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->fontScale:F

    .line 43
    iget p1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->density:I

    .line 44
    iget p1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x3

    if-ne p1, v1, :cond_36

    const/4 p1, 0x1

    goto :goto_37

    :cond_36
    const/4 p1, 0x0

    :goto_37
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->inCarMode:Z

    .line 46
    iget p1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->uiMode:I

    const-string p1, "currentConfig"

    .line 47
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->localeList:Landroid/os/LocaleList;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 27
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method

.method public notifyThemeChanged()V
    .registers 4

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 126
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 127
    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 53
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 54
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onThemeChanged()V

    goto :goto_b

    :cond_23
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 135
    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 62
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 63
    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onConfigChanged(Landroid/content/res/Configuration;)V

    goto :goto_10

    .line 65
    :cond_28
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 66
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 67
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    .line 68
    iget v4, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->uiMode:I

    const/4 v5, 0x1

    if-eq v3, v4, :cond_37

    move v4, v5

    goto :goto_38

    :cond_37
    const/4 v4, 0x0

    .line 70
    :goto_38
    iget v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->density:I

    if-ne v2, v6, :cond_48

    iget v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->fontScale:F

    cmpg-float v6, v1, v6

    if-nez v6, :cond_48

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->inCarMode:Z

    if-eqz v6, :cond_68

    if-eqz v4, :cond_68

    .line 142
    :cond_48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4c
    :goto_4c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 143
    check-cast v7, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 71
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    .line 72
    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDensityOrFontScaleChanged()V

    goto :goto_4c

    .line 74
    :cond_64
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->density:I

    .line 75
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->fontScale:F

    .line 78
    :cond_68
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->localeList:Landroid/os/LocaleList;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v5

    if-eqz v2, :cond_93

    .line 80
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->localeList:Landroid/os/LocaleList;

    .line 150
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7b
    :goto_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 151
    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 81
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 82
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onLocaleListChanged()V

    goto :goto_7b

    :cond_93
    if-eqz v4, :cond_c2

    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I

    move-result v2

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 91
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->uiMode:I

    .line 158
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_aa
    :goto_aa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 159
    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 92
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 93
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onUiModeChanged()V

    goto :goto_aa

    .line 97
    :cond_c2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->lastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    const/high16 v1, -0x80000000

    and-int/2addr p1, v1

    if-eqz p1, :cond_e9

    .line 166
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d1
    :goto_d1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 167
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 99
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onOverlayChanged()V

    goto :goto_d1

    :cond_e9
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 27
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method
