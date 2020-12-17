.class public Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$RecordsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FlymeFixRecordsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RecordsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/meizu/settings/serviceinfo/Util$FixRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;Landroid/content/Context;IILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List<",
            "Lcom/meizu/settings/serviceinfo/Util$FixRecord;",
            ">;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$RecordsAdapter;->this$0:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;

    .line 116
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/meizu/settings/serviceinfo/Util$FixRecord;
    .registers 2

    .line 161
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$RecordsAdapter;->this$0:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;

    invoke-static {p0}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->access$100(Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/serviceinfo/Util$FixRecord;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$RecordsAdapter;->getItem(I)Lcom/meizu/settings/serviceinfo/Util$FixRecord;

    move-result-object p0

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_40

    .line 123
    iget-object p2, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$RecordsAdapter;->this$0:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;

    invoke-static {p2}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->access$000(Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d00fc

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 125
    new-instance p3, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$FixRecordPoint;

    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$RecordsAdapter;->this$0:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;

    invoke-direct {p3, v1}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$FixRecordPoint;-><init>(Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;)V

    const v1, 0x7f0a05c7

    .line 127
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$FixRecordPoint;->mTimeView:Landroid/widget/TextView;

    const v1, 0x7f0a05c6

    .line 129
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$FixRecordPoint;->mCStatusView:Landroid/widget/TextView;

    const v1, 0x7f0a04d9

    .line 131
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$FixRecordPoint;->mNewView:Landroid/widget/ImageView;

    .line 132
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_46

    .line 134
    :cond_40
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$FixRecordPoint;

    .line 137
    :goto_46
    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$RecordsAdapter;->getItem(I)Lcom/meizu/settings/serviceinfo/Util$FixRecord;

    move-result-object p0

    if-eqz p0, :cond_a7

    .line 139
    invoke-virtual {p0}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->getCStatus()I

    move-result p1

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView, time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cstatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->getCStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlymeFixRecordsPreference"

    .line 140
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p3, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$FixRecordPoint;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->getTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p0, 0x7f120efa

    if-nez p1, :cond_8f

    .line 144
    iget-object p1, p3, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$FixRecordPoint;->mNewView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object p1, p3, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$FixRecordPoint;->mCStatusView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a7

    .line 147
    :cond_8f
    iget-object v0, p3, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$FixRecordPoint;->mNewView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9f

    .line 149
    iget-object p1, p3, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$FixRecordPoint;->mCStatusView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a7

    .line 151
    :cond_9f
    iget-object p0, p3, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$FixRecordPoint;->mCStatusView:Landroid/widget/TextView;

    const p1, 0x7f120954

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_a7
    :goto_a7
    return-object p2
.end method
