.class public abstract Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;
.super Ljava/lang/Object;
.source "MarqueeTicker.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;
    }
.end annotation


# instance fields
.field private mAdvanceTicker:Ljava/lang/Runnable;

.field private mAdvanceToNextTicker:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurrentColor:I

.field private mCurrentTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

.field private mHandler:Landroid/os/Handler;

.field public mIconSwitcher:Landroid/widget/ImageSwitcher;

.field private mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;",
            ">;"
        }
    .end annotation
.end field

.field public mTextSwitcher:Landroid/widget/TextSwitcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$1;-><init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mAdvanceTicker:Ljava/lang/Runnable;

    .line 197
    new-instance v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$2;-><init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mAdvanceToNextTicker:Ljava/lang/Runnable;

    .line 78
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mContext:Landroid/content/Context;

    .line 80
    sget v0, Lcom/android/systemui/R$id;->tickerIcon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    .line 81
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    sget v1, Lcom/android/systemui/R$anim;->marquee_push_down_in:I

    .line 82
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 87
    sget v0, Lcom/android/systemui/R$id;->tickerText:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextSwitcher;

    iput-object p2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    .line 88
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    sget p2, Lcom/android/systemui/R$anim;->marquee_push_down_in:I

    .line 89
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->scheduleAdvance()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->skipToNextTicker()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->scheduleAdvanceToNextTicker()V

    return-void
.end method

.method static synthetic access$400(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)Ljava/util/ArrayList;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    return-object p0
.end method

.method private scheduleAdvance()V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mAdvanceTicker:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scheduleAdvanceToNextTicker()V
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mAdvanceToNextTicker:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private skipToNextTicker()V
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mAdvanceToNextTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addEntry(Landroid/service/notification/StatusBarNotification;)V
    .registers 13

    .line 97
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_56

    .line 103
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    .line 104
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 105
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->icon:I

    iget-object v4, v2, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->icon:I

    if-ne v3, v4, :cond_56

    .line 106
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->iconLevel:I

    iget-object v4, v2, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->iconLevel:I

    if-ne v3, v4, :cond_56

    iget-object v2, v2, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    .line 107
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 108
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 107
    invoke-static {v2, v3}, Lcom/android/internal/util/CharSequences;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_56

    return-void

    .line 113
    :cond_56
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 114
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v7, v3, Landroid/app/Notification;->iconLevel:I

    const/4 v8, 0x0

    .line 115
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v9, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 113
    invoke-static {v2, v10}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 116
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 117
    new-instance v4, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    invoke-direct {v4, p0, p1, v2, v3}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;-><init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;Landroid/service/notification/StatusBarNotification;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    move v2, v1

    .line 121
    :goto_8b
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c2

    .line 122
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    .line 123
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    iget-object v6, v3, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    if-ne v5, v6, :cond_bf

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v3, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 125
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v2, v5

    :cond_bf
    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    .line 129
    :cond_c2
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_142

    .line 134
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_142

    .line 135
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    .line 137
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setAnimateFirstView(Z)V

    .line 138
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->reset()V

    .line 139
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v2, p1, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setAnimateFirstView(Z)V

    .line 143
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->reset()V

    .line 144
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v1, p1, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->getDisplayedChild()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    .line 147
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    iput-object p1, v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->mSegment:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    if-eqz v0, :cond_120

    .line 150
    iget p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentColor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    :cond_120
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    if-eqz p1, :cond_137

    invoke-virtual {p1}, Landroid/widget/ImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_137

    .line 153
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {p1}, Landroid/widget/ImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentColor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 156
    :cond_137
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-virtual {p1}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->startScrollSoon()V

    .line 158
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->tickerStarting()V

    .line 159
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->scheduleAdvance()V

    :cond_142
    return-void
.end method

.method public halt()V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mAdvanceTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 238
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 239
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->tickerHalting()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 5

    .line 258
    iget-object p2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    if-eqz p2, :cond_11

    .line 259
    invoke-static {p1, p2, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p2

    iput p2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentColor:I

    .line 260
    iget-object p2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    iget v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentColor:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    :cond_11
    iget-object p2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    if-eqz p2, :cond_34

    invoke-virtual {p2}, Landroid/widget/ImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_34

    .line 263
    iget-object p2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {p2}, Landroid/widget/ImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentColor:I

    .line 264
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {p1}, Landroid/widget/ImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mCurrentColor:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_34
    return-void
.end method

.method public reflowText()V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 244
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    .line 245
    iget-object v0, v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->text:Ljava/lang/CharSequence;

    .line 246
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {p0, v0}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    :cond_18
    return-void
.end method

.method public removeEntry(Landroid/service/notification/StatusBarNotification;)V
    .registers 7

    .line 228
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_3b

    .line 229
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    .line 230
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    iget-object v4, v2, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v3, v4, :cond_38

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 231
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;

    iput-boolean v1, v2, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker$Segment;->isRemoved:Z

    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_3b
    return-void
.end method

.method public abstract tickerDone()V
.end method

.method public abstract tickerHalting()V
.end method

.method public abstract tickerStarting()V
.end method
