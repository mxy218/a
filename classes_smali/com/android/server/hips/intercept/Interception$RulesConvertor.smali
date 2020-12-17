.class Lcom/android/server/hips/intercept/Interception$RulesConvertor;
.super Ljava/lang/Object;
.source "Interception.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/intercept/Interception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RulesConvertor"
.end annotation


# instance fields
.field mAction:Ljava/lang/String;

.field mCalleeClass:Ljava/lang/String;

.field mCalleePkg:Ljava/lang/String;

.field mCallerPkg:Ljava/lang/String;

.field mCountry:Ljava/lang/String;

.field mData:Ljava/lang/String;

.field mExtras:Ljava/lang/String;

.field mFlyme:Ljava/lang/String;

.field mIndex:I

.field mInteraction:Ljava/lang/String;

.field mIntercept:Z

.field mProcessName:Ljava/lang/String;

.field mRunType:Ljava/lang/String;

.field mSn:Ljava/lang/String;

.field mVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)V
    .registers 3
    .param p1, "convertor"  # Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1731
    iget-object v0, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mVersion:Ljava/lang/String;

    .line 1732
    iget-object v0, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mRunType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mRunType:Ljava/lang/String;

    .line 1733
    iget-object v0, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    .line 1734
    iget-object v0, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    .line 1735
    iget-object v0, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleeClass:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleeClass:Ljava/lang/String;

    .line 1736
    iget-object v0, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mProcessName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mProcessName:Ljava/lang/String;

    .line 1737
    iget-object v0, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mAction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mAction:Ljava/lang/String;

    .line 1738
    iget-object v0, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mData:Ljava/lang/String;

    .line 1739
    iget-object v0, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mExtras:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mExtras:Ljava/lang/String;

    .line 1740
    iget-object v0, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mInteraction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mInteraction:Ljava/lang/String;

    .line 1741
    iget-boolean v0, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    iput-boolean v0, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    .line 1742
    iget-object v0, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCountry:Ljava/lang/String;

    .line 1743
    iget-object v0, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mSn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mSn:Ljava/lang/String;

    .line 1744
    iget-object v0, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mFlyme:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mFlyme:Ljava/lang/String;

    .line 1745
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "version"  # Ljava/lang/String;
    .param p2, "runType"  # Ljava/lang/String;
    .param p3, "callerPkg"  # Ljava/lang/String;
    .param p4, "calleePkg"  # Ljava/lang/String;
    .param p5, "calleeClass"  # Ljava/lang/String;
    .param p6, "processName"  # Ljava/lang/String;
    .param p7, "action"  # Ljava/lang/String;
    .param p8, "data"  # Ljava/lang/String;
    .param p9, "extras"  # Ljava/lang/String;
    .param p10, "interception"  # Ljava/lang/String;
    .param p11, "interaction"  # Ljava/lang/String;
    .param p12, "country"  # Ljava/lang/String;
    .param p13, "sn"  # Ljava/lang/String;
    .param p14, "flyme"  # Ljava/lang/String;

    .line 1711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1712
    iput-object p1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mVersion:Ljava/lang/String;

    .line 1713
    iput-object p2, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mRunType:Ljava/lang/String;

    .line 1714
    iput-object p3, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    .line 1715
    iput-object p4, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    .line 1716
    iput-object p5, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleeClass:Ljava/lang/String;

    .line 1717
    iput-object p6, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mProcessName:Ljava/lang/String;

    .line 1718
    iput-object p7, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mAction:Ljava/lang/String;

    .line 1719
    iput-object p8, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mData:Ljava/lang/String;

    .line 1720
    iput-object p9, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mExtras:Ljava/lang/String;

    .line 1721
    if-eqz p10, :cond_20

    .line 1722
    const-string/jumbo v0, "true"

    invoke-virtual {p10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    .line 1724
    :cond_20
    iput-object p11, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mInteraction:Ljava/lang/String;

    .line 1725
    iput-object p12, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCountry:Ljava/lang/String;

    .line 1726
    iput-object p13, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mSn:Ljava/lang/String;

    .line 1727
    iput-object p14, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mFlyme:Ljava/lang/String;

    .line 1728
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z
    .registers 5
    .param p1, "convertor"  # Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1748
    const/4 v0, 0x0

    .line 1749
    .local v0, "equal":Z
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mVersion:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v2, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_d
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mVersion:Ljava/lang/String;

    if-nez v1, :cond_f2

    iget-object v1, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mVersion:Ljava/lang/String;

    if-nez v1, :cond_f2

    :cond_15
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mRunType:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v2, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mRunType:Ljava/lang/String;

    .line 1750
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    :cond_21
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mRunType:Ljava/lang/String;

    if-nez v1, :cond_f2

    iget-object v1, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mRunType:Ljava/lang/String;

    if-nez v1, :cond_f2

    :cond_29
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    if-eqz v1, :cond_35

    iget-object v2, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    .line 1751
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    :cond_35
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    if-nez v1, :cond_f2

    iget-object v1, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    if-nez v1, :cond_f2

    :cond_3d
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    if-eqz v1, :cond_49

    iget-object v2, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    .line 1752
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    :cond_49
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    if-nez v1, :cond_f2

    iget-object v1, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    if-nez v1, :cond_f2

    :cond_51
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleeClass:Ljava/lang/String;

    if-eqz v1, :cond_5d

    iget-object v2, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleeClass:Ljava/lang/String;

    .line 1753
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    :cond_5d
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleeClass:Ljava/lang/String;

    if-nez v1, :cond_f2

    iget-object v1, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleeClass:Ljava/lang/String;

    if-nez v1, :cond_f2

    :cond_65
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mProcessName:Ljava/lang/String;

    if-eqz v1, :cond_71

    iget-object v2, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mProcessName:Ljava/lang/String;

    .line 1754
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    :cond_71
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mProcessName:Ljava/lang/String;

    if-nez v1, :cond_f2

    iget-object v1, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mProcessName:Ljava/lang/String;

    if-nez v1, :cond_f2

    :cond_79
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_85

    iget-object v2, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mAction:Ljava/lang/String;

    .line 1755
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    :cond_85
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mAction:Ljava/lang/String;

    if-nez v1, :cond_f2

    iget-object v1, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mAction:Ljava/lang/String;

    if-nez v1, :cond_f2

    :cond_8d
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mData:Ljava/lang/String;

    if-eqz v1, :cond_99

    iget-object v2, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mData:Ljava/lang/String;

    .line 1756
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a1

    :cond_99
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mData:Ljava/lang/String;

    if-nez v1, :cond_f2

    iget-object v1, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mData:Ljava/lang/String;

    if-nez v1, :cond_f2

    :cond_a1
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mExtras:Ljava/lang/String;

    if-eqz v1, :cond_ad

    iget-object v2, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mExtras:Ljava/lang/String;

    .line 1757
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b5

    :cond_ad
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mExtras:Ljava/lang/String;

    if-nez v1, :cond_f2

    iget-object v1, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mExtras:Ljava/lang/String;

    if-nez v1, :cond_f2

    :cond_b5
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCountry:Ljava/lang/String;

    if-eqz v1, :cond_c1

    iget-object v2, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCountry:Ljava/lang/String;

    .line 1758
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c9

    :cond_c1
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCountry:Ljava/lang/String;

    if-nez v1, :cond_f2

    iget-object v1, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCountry:Ljava/lang/String;

    if-nez v1, :cond_f2

    :cond_c9
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mSn:Ljava/lang/String;

    if-eqz v1, :cond_d5

    iget-object v2, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mSn:Ljava/lang/String;

    .line 1759
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_dd

    :cond_d5
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mSn:Ljava/lang/String;

    if-nez v1, :cond_f2

    iget-object v1, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mSn:Ljava/lang/String;

    if-nez v1, :cond_f2

    :cond_dd
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mFlyme:Ljava/lang/String;

    if-eqz v1, :cond_e9

    iget-object v2, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mFlyme:Ljava/lang/String;

    .line 1760
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f1

    :cond_e9
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mFlyme:Ljava/lang/String;

    if-nez v1, :cond_f2

    iget-object v1, p1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mFlyme:Ljava/lang/String;

    if-nez v1, :cond_f2

    .line 1761
    :cond_f1
    const/4 v0, 0x1

    .line 1763
    :cond_f2
    return v0
.end method

.method public getRulesBlurCount()I
    .registers 3

    .line 1767
    const/4 v0, 0x0

    .line 1768
    .local v0, "blurCount":I
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mVersion:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 1769
    add-int/lit8 v0, v0, 0x1

    .line 1771
    :cond_7
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mRunType:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 1772
    add-int/lit8 v0, v0, 0x1

    .line 1774
    :cond_d
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    if-nez v1, :cond_13

    .line 1775
    add-int/lit8 v0, v0, 0x1

    .line 1777
    :cond_13
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    if-nez v1, :cond_19

    .line 1778
    add-int/lit8 v0, v0, 0x1

    .line 1780
    :cond_19
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleeClass:Ljava/lang/String;

    if-nez v1, :cond_1f

    .line 1781
    add-int/lit8 v0, v0, 0x1

    .line 1783
    :cond_1f
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mProcessName:Ljava/lang/String;

    if-nez v1, :cond_25

    .line 1784
    add-int/lit8 v0, v0, 0x1

    .line 1786
    :cond_25
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mAction:Ljava/lang/String;

    if-nez v1, :cond_2b

    .line 1787
    add-int/lit8 v0, v0, 0x1

    .line 1789
    :cond_2b
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mData:Ljava/lang/String;

    if-nez v1, :cond_31

    .line 1790
    add-int/lit8 v0, v0, 0x1

    .line 1792
    :cond_31
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mExtras:Ljava/lang/String;

    if-nez v1, :cond_37

    .line 1793
    add-int/lit8 v0, v0, 0x1

    .line 1795
    :cond_37
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mInteraction:Ljava/lang/String;

    if-nez v1, :cond_3d

    .line 1796
    add-int/lit8 v0, v0, 0x1

    .line 1798
    :cond_3d
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCountry:Ljava/lang/String;

    if-nez v1, :cond_43

    .line 1799
    add-int/lit8 v0, v0, 0x1

    .line 1801
    :cond_43
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mSn:Ljava/lang/String;

    if-nez v1, :cond_49

    .line 1802
    add-int/lit8 v0, v0, 0x1

    .line 1804
    :cond_49
    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mFlyme:Ljava/lang/String;

    if-nez v1, :cond_4f

    .line 1805
    add-int/lit8 v0, v0, 0x1

    .line 1807
    :cond_4f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRunType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mRunType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCallerPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCalleePkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCalleeClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleeClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mProcessName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mExtras:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mInteraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mInteraction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIntercept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mCountry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mSn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mFlyme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mFlyme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
