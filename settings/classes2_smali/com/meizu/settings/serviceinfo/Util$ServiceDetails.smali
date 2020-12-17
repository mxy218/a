.class public Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/serviceinfo/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceDetails"
.end annotation


# instance fields
.field mCStatus:I

.field mExpenses:Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;

.field mFixTime:Ljava/lang/String;

.field mId:Ljava/lang/String;

.field mOverAll:I

.field mRepairDateItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field mRepairInfoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field mService:I

.field mSn:Ljava/lang/String;

.field mSpeed:I

.field mSuggest:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;Ljava/util/ArrayList;Ljava/util/ArrayList;IIIILjava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;IIII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mSn:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mId:Ljava/lang/String;

    .line 64
    iput p6, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mCStatus:I

    .line 65
    iput p7, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mOverAll:I

    .line 66
    iput p8, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mService:I

    .line 67
    iput p9, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mSpeed:I

    .line 68
    iput-object p3, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mExpenses:Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;

    .line 69
    iput-object p4, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mRepairInfoItems:Ljava/util/ArrayList;

    .line 70
    iput-object p5, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mRepairDateItems:Ljava/util/ArrayList;

    .line 71
    iput-object p10, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mFixTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCStatus()I
    .registers 1

    .line 103
    iget p0, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mCStatus:I

    return p0
.end method

.method public getExpenses()Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mExpenses:Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;

    return-object p0
.end method

.method public getFixNumber()Ljava/lang/String;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getFixTime()Ljava/lang/String;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mFixTime:Ljava/lang/String;

    return-object p0
.end method

.method public getOverAll()I
    .registers 1

    .line 91
    iget p0, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mOverAll:I

    return p0
.end method

.method public getRepairDateItems()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mRepairDateItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getRepairInfoItems()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mRepairInfoItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getSN()Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mSn:Ljava/lang/String;

    return-object p0
.end method

.method public getService()I
    .registers 1

    .line 95
    iget p0, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mService:I

    return p0
.end method

.method public getSpeed()I
    .registers 1

    .line 99
    iget p0, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mSpeed:I

    return p0
.end method

.method public getSuggest()Ljava/lang/String;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mSuggest:Ljava/lang/String;

    return-object p0
.end method

.method public setCStatus(I)V
    .registers 2

    .line 123
    iput p1, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mCStatus:I

    return-void
.end method

.method public setEvaluation(III)V
    .registers 4

    .line 127
    iput p1, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mOverAll:I

    .line 128
    iput p2, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mService:I

    .line 129
    iput p3, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mSpeed:I

    return-void
.end method

.method public setSuggest(Ljava/lang/String;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->mSuggest:Ljava/lang/String;

    return-void
.end method
