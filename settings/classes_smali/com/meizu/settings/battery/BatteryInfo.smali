.class public Lcom/meizu/settings/battery/BatteryInfo;
.super Landroid/app/Activity;
.source "BatteryInfo.java"


# instance fields
.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mHandler:Landroid/os/Handler;

.field private mHealth:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLevel:Landroid/widget/TextView;

.field private mPower:Landroid/widget/TextView;

.field private mScale:Landroid/widget/TextView;

.field private mScreenStats:Landroid/os/IPowerManager;

.field private mStatus:Landroid/widget/TextView;

.field private mTechnology:Landroid/widget/TextView;

.field private mTemperature:Landroid/widget/TextView;

.field private mUptime:Landroid/widget/TextView;

.field private mVoltage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Lcom/meizu/settings/battery/BatteryInfo$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/battery/BatteryInfo$1;-><init>(Lcom/meizu/settings/battery/BatteryInfo;)V

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/meizu/settings/battery/BatteryInfo$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/battery/BatteryInfo$2;-><init>(Lcom/meizu/settings/battery/BatteryInfo;)V

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/battery/BatteryInfo;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/battery/BatteryInfo;->updateBatteryStats()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mLevel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mScale:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mVoltage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/battery/BatteryInfo;I)Ljava/lang/String;
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/settings/battery/BatteryInfo;->tenthsToFixedString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mTemperature:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mTechnology:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mPower:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mHealth:Landroid/widget/TextView;

    return-object p0
.end method

.method private final tenthsToFixedString(I)Ljava/lang/String;
    .registers 4

    .line 70
    div-int/lit8 p0, p1, 0xa

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 p0, p0, 0xa

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateBatteryStats()V
    .registers 5

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 179
    iget-object p0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mUptime:Landroid/widget/TextView;

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;
    .registers 5

    const-string/jumbo p0, "plugged"

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    const-string/jumbo v1, "status"

    .line 186
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_44

    const p2, 0x7f12028b

    .line 189
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-lez p0, :cond_6c

    if-ne p0, v0, :cond_22

    const p0, 0x7f12028c

    goto :goto_2b

    :cond_22
    if-ne p0, v1, :cond_28

    const p0, 0x7f12028f

    goto :goto_2b

    :cond_28
    const p0, 0x7f120291

    .line 199
    :goto_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6c

    :cond_44
    const/4 p0, 0x3

    if-ne p2, p0, :cond_4f

    const p0, 0x7f120293

    .line 202
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_6c

    :cond_4f
    const/4 p0, 0x4

    if-ne p2, p0, :cond_5a

    const p0, 0x7f120296

    .line 204
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_6c

    :cond_5a
    const/4 p0, 0x5

    if-ne p2, p0, :cond_65

    const p0, 0x7f120294

    .line 206
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_6c

    :cond_65
    const p0, 0x7f120297

    .line 208
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_6c
    :goto_6c
    return-object p2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d005d

    .line 141
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f120280

    .line 142
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/battery/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    .line 146
    iget-object p0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 171
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const v0, 0x7f0a06b9

    .line 152
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mStatus:Landroid/widget/TextView;

    const v0, 0x7f0a056d

    .line 153
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mPower:Landroid/widget/TextView;

    const v0, 0x7f0a03b5

    .line 154
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mLevel:Landroid/widget/TextView;

    const v0, 0x7f0a0603

    .line 155
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mScale:Landroid/widget/TextView;

    const v0, 0x7f0a031c

    .line 156
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mHealth:Landroid/widget/TextView;

    const v0, 0x7f0a072a

    .line 157
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mTechnology:Landroid/widget/TextView;

    const v0, 0x7f0a07c9

    .line 158
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mVoltage:Landroid/widget/TextView;

    const v0, 0x7f0a072b

    .line 159
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mTemperature:Landroid/widget/TextView;

    const v0, 0x7f0a0796

    .line 160
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mUptime:Landroid/widget/TextView;

    const-string v0, "batteryinfo"

    .line 162
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string/jumbo v0, "power"

    .line 163
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mScreenStats:Landroid/os/IPowerManager;

    .line 164
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 165
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/meizu/settings/battery/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
