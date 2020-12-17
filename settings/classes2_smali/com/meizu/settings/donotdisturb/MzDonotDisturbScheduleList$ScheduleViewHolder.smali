.class Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;
.super Lflyme/support/v7/widget/RecyclerView$ViewHolder;
.source "MzDonotDisturbScheduleList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduleViewHolder"
.end annotation


# instance fields
.field private repeatSummary:Landroid/widget/TextView;

.field private scheduleName:Landroid/widget/TextView;

.field private scheduleSwitch:Lcom/meizu/common/widget/Switch;

.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Landroid/view/View;)V
    .registers 3

    .line 458
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    .line 459
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a060b

    .line 460
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->scheduleName:Landroid/widget/TextView;

    const p1, 0x7f0a05d6

    .line 461
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->repeatSummary:Landroid/widget/TextView;

    const p1, 0x7f0a060c

    .line 462
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/widget/Switch;

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->scheduleSwitch:Lcom/meizu/common/widget/Switch;

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;)Lcom/meizu/common/widget/Switch;
    .registers 1

    .line 452
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->scheduleSwitch:Lcom/meizu/common/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;Lcom/meizu/common/widget/Switch;)Lcom/meizu/common/widget/Switch;
    .registers 2

    .line 452
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->scheduleSwitch:Lcom/meizu/common/widget/Switch;

    return-object p1
.end method

.method static synthetic access$800(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 452
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->scheduleName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .line 452
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->scheduleName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 452
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->repeatSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$902(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .line 452
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;->repeatSummary:Landroid/widget/TextView;

    return-object p1
.end method
