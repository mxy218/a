.class Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;
.super Ljava/lang/Object;
.source "WhiteListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/WhiteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContactPerson"
.end annotation


# instance fields
.field private mId:J

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;->mName:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;->mNumber:Ljava/lang/String;

    .line 82
    iput-wide p3, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;->mId:J

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;)J
    .registers 3

    .line 74
    iget-wide v0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;->mId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;)Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;->mName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getId()J
    .registers 3

    .line 90
    iget-wide v0, p0, Lcom/meizu/settings/donotdisturb/WhiteListFragment$ContactPerson;->mId:J

    return-wide v0
.end method
