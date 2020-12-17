.class public Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;
.super Landroid/widget/LinearLayout;
.source "AdvertTickerView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# static fields
.field private static DEBUG:Z = false

.field private static TAG:Ljava/lang/String; = "AdvertTickerView"


# instance fields
.field private mCurrentKey:Ljava/lang/String;

.field private mIconSwitcher:Landroid/widget/ImageSwitcher;

.field private mTextSwitcher:Landroid/widget/TextSwitcher;

.field private mTickIconId:I

.field private tickerIconDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    sget-object v0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTickIconId:I

    .line 33
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->tickerIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    const/4 p2, 0x0

    .line 32
    iput p2, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTickIconId:I

    .line 33
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->tickerIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    const/4 p2, 0x0

    .line 32
    iput p2, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTickIconId:I

    .line 33
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->tickerIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_f9

    .line 62
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 63
    iget v2, v1, Landroid/app/Notification;->flags:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_11

    move v2, v3

    goto :goto_12

    :cond_11
    move v2, v0

    :goto_12
    if-eqz v2, :cond_20

    .line 64
    iget-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_20

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v2

    if-nez v2, :cond_20

    move v2, v3

    goto :goto_21

    :cond_20
    move v2, v0

    .line 65
    :goto_21
    sget-boolean v4, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->DEBUG:Z

    if-eqz v4, :cond_53

    .line 66
    sget-object v4, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",show="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",tickerText="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_53
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    if-eqz v4, :cond_61

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f9

    :cond_61
    if-eqz v2, :cond_f2

    .line 70
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_d5

    .line 71
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "ticker_icon"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v2, :cond_cb

    .line 74
    :try_start_79
    iget v6, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTickIconId:I

    if-eq v2, v6, :cond_9a

    .line 75
    iget-object v6, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 76
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v6

    .line 77
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->tickerIconDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_95
    .catchall {:try_start_79 .. :try_end_95} :catchall_96

    goto :goto_9a

    :catchall_96
    move-exception v6

    .line 80
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    :cond_9a
    :goto_9a
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->tickerIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_c0

    .line 83
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "ticker_icon_switch"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_b1

    .line 84
    iget v4, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTickIconId:I

    if-eq v2, v4, :cond_d5

    .line 85
    :cond_b1
    iput v2, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTickIconId:I

    .line 86
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->tickerIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d5

    .line 90
    :cond_c0
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, v5}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, v4}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    goto :goto_d5

    .line 94
    :cond_cb
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, v5}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, v4}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 98
    :cond_d5
    :goto_d5
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    .line 99
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getDisplayedChild()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    .line 101
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->startScrollSoon()V

    return v3

    .line 104
    :cond_f2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->removeNotification(Ljava/lang/String;)V

    :cond_f9
    return v0
.end method

.method public isShow()Z
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 50
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 51
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 5

    .line 135
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    .line 136
    iget-object p2, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    const/4 p3, 0x0

    if-eqz p2, :cond_20

    move p2, p3

    .line 137
    :goto_a
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_20

    .line 138
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, p2}, Landroid/widget/TextSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 142
    :cond_20
    iget-object p2, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    if-eqz p2, :cond_3a

    .line 143
    :goto_24
    iget-object p2, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {p2}, Landroid/widget/ImageSwitcher;->getChildCount()I

    move-result p2

    if-ge p3, p2, :cond_3a

    .line 144
    iget-object p2, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {p2, p3}, Landroid/widget/ImageSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 145
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_24

    :cond_3a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 57
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 128
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 129
    sget v0, Lcom/android/systemui/R$id;->tickerIcon_ext:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    .line 130
    sget v0, Lcom/android/systemui/R$id;->tickerText_ext:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    return-void
.end method

.method public removeNotification(Ljava/lang/String;)V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    if-eqz v0, :cond_23

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mCurrentKey:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTickIconId:I

    .line 117
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->tickerIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    :cond_23
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 152
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p1}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 154
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {p0, p1}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    return-void
.end method
