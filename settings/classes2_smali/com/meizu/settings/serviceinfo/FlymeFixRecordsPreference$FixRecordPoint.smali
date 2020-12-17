.class Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$FixRecordPoint;
.super Ljava/lang/Object;
.source "FlymeFixRecordsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FixRecordPoint"
.end annotation


# instance fields
.field public mCStatusView:Landroid/widget/TextView;

.field public mNewView:Landroid/widget/ImageView;

.field public mTimeView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$FixRecordPoint;->this$0:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
