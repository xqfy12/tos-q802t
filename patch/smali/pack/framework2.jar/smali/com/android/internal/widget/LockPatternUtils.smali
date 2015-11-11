.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$ZteExt;
    }
.end annotation


# static fields
.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"

.field public static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field public static final FLAG_BIOMETRIC_WEAK_LIVELINESS:I = 0x1

.field public static final ID_DEFAULT_STATUS_WIDGET:I = -0x2

.field public static final KEYGUARD_SHOW_APPWIDGET:Ljava/lang/String; = "showappwidget"

.field public static final KEYGUARD_SHOW_SECURITY_CHALLENGE:Ljava/lang/String; = "showsecuritychallenge"

.field public static final KEYGUARD_SHOW_USER_SWITCHER:Ljava/lang/String; = "showuserswitcher"

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field public static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"

.field public static final LOCKSCREEN_CAMERA_ENABLED:Ljava/lang/String; = "lockscreen.camera_enabled"

.field public static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final LOCKSCREEN_WIDGETS_ENABLED:Ljava/lang/String; = "lockscreen.widgets_enabled"

.field public static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field private static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field public static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field public static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field public static final PATTERN_SIZE_DEFAULT:B = 0x3t

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static volatile sCurrentUserId:I


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mMultiUserMode:Z

.field private mProfileManager:Landroid/app/ProfileManager;

.field public mZteExt:Lcom/android/internal/widget/LockPatternUtils$ZteExt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 185
    const/16 v0, -0x2710

    sput v0, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1781
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils$ZteExt;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mZteExt:Lcom/android/internal/widget/LockPatternUtils$ZteExt;

    .line 203
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 205
    const-string v0, "profile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mProfileManager:Landroid/app/ProfileManager;

    .line 210
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    :goto_25
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMultiUserMode:Z

    .line 212
    return-void

    .line 210
    :cond_28
    const/4 v0, 0x0

    goto :goto_25
.end method

.method static synthetic access$000(Lcom/android/internal/widget/LockPatternUtils;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/ILockSettings;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;J)J
    .registers 6
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/LockPatternUtils;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/LockPatternUtils;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JI)V
    .registers 5
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static combineStrings([ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "list"    # [I
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 1177
    array-length v1, p0

    .line 1179
    .local v1, "listLength":I
    packed-switch v1, :pswitch_data_4e

    .line 1188
    const/4 v4, 0x0

    .line 1189
    .local v4, "strLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1191
    .local v3, "separatorLength":I
    array-length v6, p0

    new-array v5, v6, [Ljava/lang/String;

    .line 1192
    .local v5, "stringList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_31

    .line 1193
    aget v6, p0, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1194
    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 1195
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_23

    .line 1196
    add-int/2addr v4, v3

    .line 1192
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1181
    .end local v0    # "i":I
    .end local v3    # "separatorLength":I
    .end local v4    # "strLength":I
    .end local v5    # "stringList":[Ljava/lang/String;
    :pswitch_26
    const-string v6, ""

    .line 1209
    :goto_28
    return-object v6

    .line 1184
    :pswitch_29
    const/4 v6, 0x0

    aget v6, p0, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_28

    .line 1200
    .restart local v0    # "i":I
    .restart local v3    # "separatorLength":I
    .restart local v4    # "strLength":I
    .restart local v5    # "stringList":[Ljava/lang/String;
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1202
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_37
    if-ge v0, v1, :cond_48

    .line 1203
    aget v6, p0, v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1204
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_45

    .line 1205
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 1209
    :cond_48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_28

    .line 1179
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .registers 6
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, "hasDigit":Z
    const/4 v1, 0x0

    .line 577
    .local v1, "hasNonDigit":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 578
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v3, :cond_19

    .line 579
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 580
    const/4 v0, 0x1

    .line 578
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 582
    :cond_17
    const/4 v1, 0x1

    goto :goto_14

    .line 586
    :cond_19
    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    .line 587
    const/high16 v4, 0x50000

    .line 595
    :goto_1f
    return v4

    .line 589
    :cond_20
    if-eqz v1, :cond_25

    .line 590
    const/high16 v4, 0x40000

    goto :goto_1f

    .line 592
    :cond_25
    if-eqz v0, :cond_2a

    .line 593
    const/high16 v4, 0x20000

    goto :goto_1f

    .line 595
    :cond_2a
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method private finishBiometricWeak()V
    .registers 4

    .prologue
    .line 1416
    const-string v1, "lockscreen.biometricweakeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1420
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1421
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.SetupEndScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1423
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1424
    return-void
.end method

.method private getAppWidgets(I)[I
    .registers 12
    .param p1, "userId"    # I

    .prologue
    .line 1156
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "lock_screen_appwidget_ids"

    invoke-static {v7, v8, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1158
    .local v1, "appWidgetIdString":Ljava/lang/String;
    const-string v4, ","

    .line 1159
    .local v4, "delims":Ljava/lang/String;
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_47

    .line 1160
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1161
    .local v3, "appWidgetStringIds":[Ljava/lang/String;
    array-length v7, v3

    new-array v2, v7, [I

    .line 1162
    .local v2, "appWidgetIds":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1a
    array-length v7, v3

    if-ge v6, v7, :cond_46

    .line 1163
    aget-object v0, v3, v6

    .line 1165
    .local v0, "appWidget":Ljava/lang/String;
    :try_start_1f
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v6
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_29} :catch_2c

    .line 1162
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 1166
    :catch_2c
    move-exception v5

    .line 1167
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v7, "LockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error when parsing widget id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v2, 0x0

    .line 1173
    .end local v0    # "appWidget":Ljava/lang/String;
    .end local v2    # "appWidgetIds":[I
    .end local v3    # "appWidgetStringIds":[Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "i":I
    :cond_46
    :goto_46
    return-object v2

    :cond_47
    const/4 v7, 0x0

    new-array v2, v7, [I

    goto :goto_46
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 1135
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method private getBoolean(Ljava/lang/String;ZI)Z
    .registers 6
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1128
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result p2

    .line 1130
    .end local p2    # "defaultValue":Z
    :goto_8
    return p2

    .line 1129
    .restart local p2    # "defaultValue":Z
    :catch_9
    move-exception v0

    .line 1130
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_8
.end method

.method private getCurrentOrCallingUserId()I
    .registers 2

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMultiUserMode:Z

    if-eqz v0, :cond_9

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 311
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    goto :goto_8
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_10

    .line 216
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 219
    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getLong(Ljava/lang/String;J)J
    .registers 7
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 1287
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-wide p2

    .line 1290
    .end local p2    # "defaultValue":J
    :goto_c
    return-wide p2

    .line 1289
    .restart local p2    # "defaultValue":J
    :catch_d
    move-exception v0

    .line 1290
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_c
.end method

.method private getSalt()Ljava/lang/String;
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 858
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 859
    .local v1, "salt":J
    cmp-long v3, v1, v4

    if-nez v3, :cond_22

    .line 861
    :try_start_c
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 862
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 863
    const-string v3, "LockPatternUtils"

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_22} :catch_27

    .line 869
    :cond_22
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 864
    :catch_27
    move-exception v0

    .line 866
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "secureSettingKey"    # Ljava/lang/String;

    .prologue
    .line 1308
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 1313
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move-result-object v1

    .line 1315
    :goto_a
    return-object v1

    .line 1314
    :catch_b
    move-exception v0

    .line 1315
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_a
.end method

.method public static isSafeModeEnabled()Z
    .registers 1

    .prologue
    .line 1436
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v0

    .line 1441
    :goto_e
    return v0

    .line 1438
    :catch_f
    move-exception v0

    .line 1441
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 817
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_5

    .line 818
    const-string v4, ""

    .line 827
    :goto_4
    return-object v4

    .line 820
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 822
    .local v2, "patternSize":I
    new-array v3, v2, [B

    .line 823
    .local v3, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v2, :cond_25

    .line 824
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 825
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 823
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 827
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_25
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1148
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1149
    return-void
.end method

.method private setBoolean(Ljava/lang/String;ZI)V
    .registers 8
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1140
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1145
    :goto_7
    return-void

    .line 1141
    :catch_8
    move-exception v0

    .line 1143
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write boolean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private setLong(Ljava/lang/String;J)V
    .registers 5
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 1295
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1296
    return-void
.end method

.method private setLong(Ljava/lang/String;JI)V
    .registers 9
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1300
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1305
    :goto_b
    return-void

    .line 1301
    :catch_c
    move-exception v0

    .line 1303
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1321
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1326
    :goto_7
    return-void

    .line 1322
    :catch_8
    move-exception v0

    .line 1324
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 7
    .param p0, "ary"    # [B

    .prologue
    .line 897
    const-string v0, "0123456789ABCDEF"

    .line 898
    .local v0, "hex":Ljava/lang/String;
    const-string v2, ""

    .line 899
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v3, p0

    if-ge v1, v3, :cond_43

    .line 900
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 901
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 899
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 903
    :cond_43
    return-object v2
.end method

.method private updateEncryptionPassword(Ljava/lang/String;)V
    .registers 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 601
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_10

    .line 618
    :goto_f
    return-void

    .line 606
    :cond_10
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 607
    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_20

    .line 608
    const-string v4, "LockPatternUtils"

    const-string v5, "Could not find the mount service to update the encryption password"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 612
    :cond_20
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 614
    .local v2, "mountService":Landroid/os/storage/IMountService;
    :try_start_24
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->changeEncryptionPassword(Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_f

    .line 615
    :catch_28
    move-exception v1

    .line 616
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Error changing encryption password"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method private writeAppWidgets([I)V
    .registers 6
    .param p1, "appWidgetIds"    # [I

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_appwidget_ids"

    const-string v2, ","

    invoke-static {p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->combineStrings([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1236
    return-void
.end method


# virtual methods
.method public addAppWidget(II)Z
    .registers 9
    .param p1, "widgetId"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 1240
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v3

    .line 1241
    .local v3, "widgets":[I
    if-nez v3, :cond_8

    .line 1259
    :cond_7
    :goto_7
    return v4

    .line 1244
    :cond_8
    if-ltz p2, :cond_7

    array-length v5, v3

    if-gt p2, v5, :cond_7

    .line 1247
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [I

    .line 1248
    .local v2, "newWidgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_14
    array-length v4, v2

    if-ge v0, v4, :cond_29

    .line 1249
    if-ne p2, v0, :cond_1d

    .line 1250
    aput p1, v2, v0

    .line 1251
    add-int/lit8 v0, v0, 0x1

    .line 1253
    :cond_1d
    array-length v4, v2

    if-ge v0, v4, :cond_26

    .line 1254
    aget v4, v3, v1

    aput v4, v2, v0

    .line 1255
    add-int/lit8 v1, v1, 0x1

    .line 1248
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1258
    :cond_29
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->writeAppWidgets([I)V

    .line 1259
    const/4 v4, 0x1

    goto :goto_7
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .registers 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 339
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 341
    :goto_c
    return v2

    .line 340
    :catch_d
    move-exception v0

    .line 341
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public checkPasswordHistory(Ljava/lang/String;)Z
    .registers 9
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 353
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 354
    .local v2, "passwordHashString":Ljava/lang/String;
    const-string v6, "lockscreen.passwordhistory"

    invoke-direct {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "passwordHistory":Ljava/lang/String;
    if-nez v3, :cond_13

    .line 369
    :cond_12
    :goto_12
    return v5

    .line 359
    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 360
    .local v1, "passwordHashLength":I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v4

    .line 361
    .local v4, "passwordHistoryLength":I
    if-eqz v4, :cond_12

    .line 364
    mul-int v6, v1, v4

    add-int/2addr v6, v4

    add-int/lit8 v0, v6, -0x1

    .line 366
    .local v0, "neededPasswordHistoryLength":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_2c

    .line 367
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 369
    :cond_2c
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_12
.end method

.method public checkPattern(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 324
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_11

    move-result v2

    .line 326
    :goto_10
    return v2

    .line 325
    :catch_11
    move-exception v0

    .line 326
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_10
.end method

.method public clearLock(Z)V
    .registers 6
    .param p1, "isFallback"    # Z

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 466
    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 467
    :cond_8
    const/high16 v0, 0x10000

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 469
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 470
    const-string v0, "lockscreen.password_type"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 471
    const-string v0, "lockscreen.password_type_alternate"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 472
    return-void
.end method

.method deleteGallery()V
    .registers 4

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 508
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 509
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deleteGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 510
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 512
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1c
    return-void
.end method

.method public deleteTempGallery()V
    .registers 4

    .prologue
    .line 498
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 499
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deleteTempGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 500
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 501
    return-void
.end method

.method public getActivePasswordQuality()I
    .registers 6

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 424
    .local v0, "activePasswordQuality":I
    const-string v2, "lockscreen.password_type"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 426
    .local v1, "quality":I
    sparse-switch v1, :sswitch_data_46

    .line 459
    :cond_e
    :goto_e
    return v0

    .line 428
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 429
    const/high16 v0, 0x10000

    goto :goto_e

    .line 433
    :sswitch_18
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 434
    const v0, 0x8000

    goto :goto_e

    .line 438
    :sswitch_22
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 439
    const/high16 v0, 0x20000

    goto :goto_e

    .line 443
    :sswitch_2b
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 444
    const/high16 v0, 0x40000

    goto :goto_e

    .line 448
    :sswitch_34
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 449
    const/high16 v0, 0x50000

    goto :goto_e

    .line 453
    :sswitch_3d
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 454
    const/high16 v0, 0x60000

    goto :goto_e

    .line 426
    :sswitch_data_46
    .sparse-switch
        0x8000 -> :sswitch_18
        0x10000 -> :sswitch_f
        0x20000 -> :sswitch_22
        0x40000 -> :sswitch_2b
        0x50000 -> :sswitch_34
        0x60000 -> :sswitch_3d
    .end sparse-switch
.end method

.method public getActiveProfileLockMode()I
    .registers 5

    .prologue
    .line 1344
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1347
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->requireSecureKeyguard(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1349
    const/4 v2, 0x0

    .line 1353
    :goto_15
    return v2

    .line 1352
    :cond_16
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v2}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v1

    .line 1353
    .local v1, "profile":Landroid/app/Profile;
    invoke-virtual {v1}, Landroid/app/Profile;->getScreenLockMode()I

    move-result v2

    goto :goto_15
.end method

.method public getAppWidgets()[I
    .registers 2

    .prologue
    .line 1152
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getCameraEnabled()Z
    .registers 2

    .prologue
    .line 1476
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCameraEnabled(I)Z

    move-result v0

    return v0
.end method

.method public getCameraEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1480
    const-string v0, "lockscreen.camera_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getCurrentUser()I
    .registers 4

    .prologue
    .line 286
    sget v1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_9

    .line 288
    sget v1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    .line 293
    :goto_8
    return v1

    .line 291
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_8

    .line 292
    :catch_14
    move-exception v0

    .line 293
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 5

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 189
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 191
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 192
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    :cond_22
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getFallbackAppWidgetId()I
    .registers 5

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_fallback_appwidget_id"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .registers 6

    .prologue
    const-wide/32 v3, 0x10000

    .line 771
    const-string v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 775
    .local v0, "quality":I
    const v1, 0x8000

    if-ne v0, v1, :cond_16

    .line 776
    const-string v1, "lockscreen.password_type_alternate"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 780
    :cond_16
    return v0
.end method

.method public getLockPatternSize()B
    .registers 4

    .prologue
    .line 1023
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->getLockPatternSize(I)B
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 1025
    :goto_c
    return v1

    .line 1024
    :catch_d
    move-exception v0

    .line 1025
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x3

    goto :goto_c
.end method

.method public getLockoutAttemptDeadline()J
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 1069
    const-string v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1070
    .local v0, "deadline":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1071
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_17

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_18

    :cond_17
    move-wide v0, v4

    .line 1074
    .end local v0    # "deadline":J
    :cond_18
    return-wide v0
.end method

.method public getNextAlarm()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1118
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "next_alarm_formatted"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, "nextAlarm":Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1121
    :cond_11
    const/4 v0, 0x0

    .line 1123
    .end local v0    # "nextAlarm":Ljava/lang/String;
    :cond_12
    return-object v0
.end method

.method public getOwnerInfo(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 564
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerButtonInstantlyLocks()Z
    .registers 3

    .prologue
    .line 1431
    const-string v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordLength()I
    .registers 4

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordHistoryLength()I
    .registers 4

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters()I
    .registers 4

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase()I
    .registers 4

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter()I
    .registers 4

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric()I
    .registers 4

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols()I
    .registers 4

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase()I
    .registers 4

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .registers 4

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getWidgetsEnabled()Z
    .registers 2

    .prologue
    .line 1460
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled(I)Z

    move-result v0

    return v0
.end method

.method public getWidgetsEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1464
    const-string v0, "lockscreen.widgets_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public hasWidgetsEnabledInKeyguard(I)Z
    .registers 5
    .param p1, "userid"    # I

    .prologue
    .line 1450
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets(I)[I

    move-result-object v1

    .line 1451
    .local v1, "widgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_11

    .line 1452
    aget v2, v1, v0

    if-lez v2, :cond_e

    .line 1453
    const/4 v2, 0x1

    .line 1456
    :goto_d
    return v2

    .line 1451
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1456
    :cond_11
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public isBiometricWeakEverChosen()Z
    .registers 3

    .prologue
    .line 413
    const-string v0, "lockscreen.biometricweakeverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakInstalled()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 944
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 946
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_8
    const-string v5, "com.android.facelock"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 948
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_13} :catch_16

    if-nez v5, :cond_18

    .line 964
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_15
    :goto_15
    return v3

    .line 951
    :catch_16
    move-exception v0

    .line 952
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_15

    .line 956
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_18
    const-string v5, "android.hardware.camera.front"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 959
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v5

    if-nez v5, :cond_15

    move v3, v4

    .line 964
    goto :goto_15
.end method

.method public isBiometricWeakLivelinessEnabled()Z
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 985
    const-string v2, "lock_biometric_weak_flags"

    invoke-direct {p0, v2, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 986
    .local v0, "currentFlag":J
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public isEmergencyCallCapable()Z
    .registers 3

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCallEnabledWhileSimLocked()Z
    .registers 3

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isLockPasswordEnabled()Z
    .registers 16

    .prologue
    const-wide/32 v13, 0x40000

    const-wide/32 v11, 0x20000

    const-wide/16 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 910
    const-string v8, "lockscreen.password_type"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 911
    .local v3, "mode":J
    const-string v8, "lockscreen.password_type_alternate"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 912
    .local v1, "backupMode":J
    cmp-long v8, v3, v13

    if-eqz v8, :cond_2c

    cmp-long v8, v3, v11

    if-eqz v8, :cond_2c

    const-wide/32 v8, 0x50000

    cmp-long v8, v3, v8

    if-eqz v8, :cond_2c

    const-wide/32 v8, 0x60000

    cmp-long v8, v3, v8

    if-nez v8, :cond_55

    :cond_2c
    move v5, v7

    .line 916
    .local v5, "passwordEnabled":Z
    :goto_2d
    cmp-long v8, v1, v13

    if-eqz v8, :cond_43

    cmp-long v8, v1, v11

    if-eqz v8, :cond_43

    const-wide/32 v8, 0x50000

    cmp-long v8, v1, v8

    if-eqz v8, :cond_43

    const-wide/32 v8, 0x60000

    cmp-long v8, v1, v8

    if-nez v8, :cond_57

    :cond_43
    move v0, v7

    .line 921
    .local v0, "backupEnabled":Z
    :goto_44
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v8

    if-eqz v8, :cond_59

    if-nez v5, :cond_54

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    if-eqz v8, :cond_59

    if-eqz v0, :cond_59

    :cond_54
    :goto_54
    return v7

    .end local v0    # "backupEnabled":Z
    .end local v5    # "passwordEnabled":Z
    :cond_55
    move v5, v6

    .line 912
    goto :goto_2d

    .restart local v5    # "passwordEnabled":Z
    :cond_57
    move v0, v6

    .line 916
    goto :goto_44

    .restart local v0    # "backupEnabled":Z
    :cond_59
    move v7, v6

    .line 921
    goto :goto_54
.end method

.method public isLockPatternEnabled()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/32 v5, 0x10000

    .line 929
    const-string v3, "lockscreen.password_type_alternate"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_2b

    move v0, v1

    .line 933
    .local v0, "backupEnabled":Z
    :goto_10
    const-string v3, "lock_pattern_autolock"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string v3, "lockscreen.password_type"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2a

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_2d

    if-eqz v0, :cond_2d

    :cond_2a
    :goto_2a
    return v1

    .end local v0    # "backupEnabled":Z
    :cond_2b
    move v0, v2

    .line 929
    goto :goto_10

    .restart local v0    # "backupEnabled":Z
    :cond_2d
    move v1, v2

    .line 933
    goto :goto_2a
.end method

.method public isLockScreenDisabled()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 491
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "lockscreen.disabled"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isOwnerInfoEnabled()Z
    .registers 3

    .prologue
    .line 568
    const-string v0, "lock_screen_owner_info_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPatternEverChosen()Z
    .registers 3

    .prologue
    .line 403
    const-string v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked()Z
    .registers 3

    .prologue
    .line 1083
    const-string v0, "lockscreen.lockedoutpermanently"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPukUnlockScreenEnable()Z
    .registers 3

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1329
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v8

    int-to-long v4, v8

    .line 1330
    .local v4, "mode":J
    const-wide/32 v8, 0x10000

    cmp-long v8, v4, v8

    if-nez v8, :cond_4f

    move v3, v6

    .line 1331
    .local v3, "isPattern":Z
    :goto_f
    const-wide/32 v8, 0x20000

    cmp-long v8, v4, v8

    if-eqz v8, :cond_2b

    const-wide/32 v8, 0x40000

    cmp-long v8, v4, v8

    if-eqz v8, :cond_2b

    const-wide/32 v8, 0x50000

    cmp-long v8, v4, v8

    if-eqz v8, :cond_2b

    const-wide/32 v8, 0x60000

    cmp-long v8, v4, v8

    if-nez v8, :cond_51

    :cond_2b
    move v2, v6

    .line 1335
    .local v2, "isPassword":Z
    :goto_2c
    if-eqz v3, :cond_53

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v8

    if-eqz v8, :cond_53

    move v1, v6

    .line 1336
    .local v1, "hasPattern":Z
    :goto_3b
    if-eqz v2, :cond_55

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v8

    if-eqz v8, :cond_55

    move v0, v6

    .line 1338
    .local v0, "hasPassword":Z
    :goto_44
    if-nez v1, :cond_48

    if-eqz v0, :cond_57

    :cond_48
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getActiveProfileLockMode()I

    move-result v8

    if-nez v8, :cond_57

    :goto_4e
    return v6

    .end local v0    # "hasPassword":Z
    .end local v1    # "hasPattern":Z
    .end local v2    # "isPassword":Z
    .end local v3    # "isPattern":Z
    :cond_4f
    move v3, v7

    .line 1330
    goto :goto_f

    .restart local v3    # "isPattern":Z
    :cond_51
    move v2, v7

    .line 1331
    goto :goto_2c

    .restart local v2    # "isPassword":Z
    :cond_53
    move v1, v7

    .line 1335
    goto :goto_3b

    .restart local v1    # "hasPattern":Z
    :cond_55
    move v0, v7

    .line 1336
    goto :goto_44

    .restart local v0    # "hasPassword":Z
    :cond_57
    move v6, v7

    .line 1338
    goto :goto_4e
.end method

.method public isShowErrorPath()Z
    .registers 3

    .prologue
    .line 1049
    const-string v0, "lock_pattern_show_error_path"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1014
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isVisibleDotsEnabled()Z
    .registers 3

    .prologue
    .line 1041
    const-string v0, "lock_pattern_dotsvisible"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVisiblePatternEnabled()Z
    .registers 3

    .prologue
    .line 1000
    const-string v0, "lock_pattern_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;)[B
    .registers 11
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 880
    if-nez p1, :cond_4

    .line 881
    const/4 v2, 0x0

    .line 893
    :goto_3
    return-object v2

    .line 883
    :cond_4
    const/4 v0, 0x0

    .line 884
    .local v0, "algo":Ljava/lang/String;
    const/4 v2, 0x0

    .line 886
    .local v2, "hashed":[B
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 887
    .local v4, "saltedPassword":[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 888
    .local v5, "sha1":[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 889
    .local v3, "md5":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_4f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_4f} :catch_51

    move-result-object v2

    goto :goto_3

    .line 890
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_51
    move-exception v1

    .line 891
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public patternToHash(Ljava/util/List;)[B
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 838
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p1, :cond_4

    .line 839
    const/4 v1, 0x0

    .line 853
    :goto_3
    return-object v1

    .line 842
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 843
    .local v5, "patternSize":I
    new-array v6, v5, [B

    .line 844
    .local v6, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v5, :cond_24

    .line 845
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 846
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 844
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 849
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_24
    :try_start_24
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 850
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_2d} :catch_2f

    move-result-object v1

    .line 851
    .local v1, "hash":[B
    goto :goto_3

    .line 852
    .end local v1    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_2f
    move-exception v4

    .local v4, "nsa":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 853
    goto :goto_3
.end method

.method public removeAppWidget(I)Z
    .registers 8
    .param p1, "widgetId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1263
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v3

    .line 1265
    .local v3, "widgets":[I
    array-length v5, v3

    if-nez v5, :cond_9

    .line 1282
    :cond_8
    :goto_8
    return v4

    .line 1269
    :cond_9
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    new-array v2, v5, [I

    .line 1270
    .local v2, "newWidgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_10
    array-length v5, v3

    if-ge v0, v5, :cond_24

    .line 1271
    aget v5, v3, v0

    if-ne v5, p1, :cond_1a

    .line 1270
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1273
    :cond_1a
    array-length v5, v2

    if-ge v1, v5, :cond_8

    .line 1277
    aget v5, v3, v0

    aput v5, v2, v1

    .line 1278
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1281
    :cond_24
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->writeAppWidgets([I)V

    .line 1282
    const/4 v4, 0x1

    goto :goto_8
.end method

.method public removeUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 299
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->removeUser(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 303
    :goto_7
    return-void

    .line 300
    :catch_8
    move-exception v0

    .line 301
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t remove lock settings for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public reportFailedPasswordAttempt()V
    .registers 3

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 275
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .registers 3

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 279
    return-void
.end method

.method public resumeCall()Z
    .registers 3

    .prologue
    .line 1404
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1406
    .local v0, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_15

    :try_start_c
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_14

    move-result v1

    if-eqz v1, :cond_15

    .line 1407
    const/4 v1, 0x1

    .line 1412
    :goto_13
    return v1

    .line 1409
    :catch_14
    move-exception v1

    .line 1412
    :cond_15
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public saveEncryptionPassword(Ljava/lang/String;)V
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveEncryptionPassword(Ljava/lang/String;I)V

    .line 746
    return-void
.end method

.method public saveEncryptionPassword(Ljava/lang/String;I)V
    .registers 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 755
    if-eqz p1, :cond_7

    .line 756
    if-nez p2, :cond_7

    .line 758
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(Ljava/lang/String;)V

    .line 761
    :cond_7
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 629
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 641
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZI)V
    .registers 34
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "userHandle"    # I

    .prologue
    .line 654
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v4, v0, v1}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;I)V

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    .line 656
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_161

    .line 657
    if-nez p4, :cond_16

    .line 659
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(Ljava/lang/String;)V

    .line 662
    :cond_16
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v23

    .line 663
    .local v23, "computedQuality":I
    if-nez p3, :cond_eb

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 665
    const-string v4, "lockscreen.password_type"

    move/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v12, v5

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v12, v13, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 666
    if-eqz v23, :cond_bb

    .line 667
    const/4 v6, 0x0

    .line 668
    .local v6, "letters":I
    const/4 v7, 0x0

    .line 669
    .local v7, "uppercase":I
    const/4 v8, 0x0

    .line 670
    .local v8, "lowercase":I
    const/4 v9, 0x0

    .line 671
    .local v9, "numbers":I
    const/4 v10, 0x0

    .line 672
    .local v10, "symbols":I
    const/4 v11, 0x0

    .line 673
    .local v11, "nonletter":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_3b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_85

    .line 674
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v22

    .line 675
    .local v22, "c":C
    const/16 v4, 0x41

    move/from16 v0, v22

    if-lt v0, v4, :cond_5e

    const/16 v4, 0x5a

    move/from16 v0, v22

    if-gt v0, v4, :cond_5e

    .line 676
    add-int/lit8 v6, v6, 0x1

    .line 677
    add-int/lit8 v7, v7, 0x1

    .line 673
    :goto_5b
    add-int/lit8 v25, v25, 0x1

    goto :goto_3b

    .line 678
    :cond_5e
    const/16 v4, 0x61

    move/from16 v0, v22

    if-lt v0, v4, :cond_6f

    const/16 v4, 0x7a

    move/from16 v0, v22

    if-gt v0, v4, :cond_6f

    .line 679
    add-int/lit8 v6, v6, 0x1

    .line 680
    add-int/lit8 v8, v8, 0x1

    goto :goto_5b

    .line 681
    :cond_6f
    const/16 v4, 0x30

    move/from16 v0, v22

    if-lt v0, v4, :cond_80

    const/16 v4, 0x39

    move/from16 v0, v22

    if-gt v0, v4, :cond_80

    .line 682
    add-int/lit8 v9, v9, 0x1

    .line 683
    add-int/lit8 v11, v11, 0x1

    goto :goto_5b

    .line 685
    :cond_80
    add-int/lit8 v10, v10, 0x1

    .line 686
    add-int/lit8 v11, v11, 0x1

    goto :goto_5b

    .line 689
    .end local v22    # "c":C
    :cond_85
    move/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v12, p4

    invoke-virtual/range {v3 .. v12}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 711
    .end local v6    # "letters":I
    .end local v7    # "uppercase":I
    .end local v8    # "lowercase":I
    .end local v9    # "numbers":I
    .end local v10    # "symbols":I
    .end local v11    # "nonletter":I
    .end local v25    # "i":I
    :goto_96
    const-string v4, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 712
    .local v26, "passwordHistory":Ljava/lang/String;
    if-nez v26, :cond_a7

    .line 713
    new-instance v26, Ljava/lang/String;

    .end local v26    # "passwordHistory":Ljava/lang/String;
    invoke-direct/range {v26 .. v26}, Ljava/lang/String;-><init>()V

    .line 715
    .restart local v26    # "passwordHistory":Ljava/lang/String;
    :cond_a7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v27

    .line 716
    .local v27, "passwordHistoryLength":I
    if-nez v27, :cond_123

    .line 717
    const-string v26, ""

    .line 727
    :goto_af
    const-string v4, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p4

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 737
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v23    # "computedQuality":I
    .end local v26    # "passwordHistory":Ljava/lang/String;
    .end local v27    # "passwordHistoryLength":I
    :goto_ba
    return-void

    .line 694
    .restart local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v23    # "computedQuality":I
    :cond_bb
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v3

    move/from16 v21, p4

    invoke-virtual/range {v12 .. v21}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_ce
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_ce} :catch_cf

    goto :goto_96

    .line 733
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v23    # "computedQuality":I
    :catch_cf
    move-exception v28

    .line 735
    .local v28, "re":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to save lock password "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    .line 700
    .end local v28    # "re":Landroid/os/RemoteException;
    .restart local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v23    # "computedQuality":I
    :cond_eb
    :try_start_eb
    const-string v4, "lockscreen.password_type"

    const-wide/32 v12, 0x8000

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v12, v13, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 702
    const-string v4, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v12, v5

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v12, v13, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 704
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V

    .line 705
    const v13, 0x8000

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v3

    move/from16 v21, p4

    invoke-virtual/range {v12 .. v21}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto/16 :goto_96

    .line 719
    .restart local v26    # "passwordHistory":Ljava/lang/String;
    .restart local v27    # "passwordHistoryLength":I
    :cond_123
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v24

    .line 720
    .local v24, "hash":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 723
    const/4 v4, 0x0

    move-object/from16 v0, v24

    array-length v5, v0

    mul-int v5, v5, v27

    add-int v5, v5, v27

    add-int/lit8 v5, v5, -0x1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_af

    .line 729
    .end local v23    # "computedQuality":I
    .end local v24    # "hash":[B
    .end local v26    # "passwordHistory":Ljava/lang/String;
    .end local v27    # "passwordHistoryLength":I
    :cond_161
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v3

    move/from16 v21, p4

    invoke-virtual/range {v12 .. v21}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_174
    .catch Landroid/os/RemoteException; {:try_start_eb .. :try_end_174} :catch_cf

    goto/16 :goto_ba
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 520
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Z)V
    .registers 14
    .param p2, "isFallback"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;I)V

    .line 530
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 531
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_7b

    .line 532
    const-string v1, "lockscreen.patterneverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 533
    if-nez p2, :cond_3c

    .line 534
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 535
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 536
    const/high16 v1, 0x10000

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 553
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_3b
    return-void

    .line 539
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_3c
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x8000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 540
    const-string v1, "lockscreen.password_type_alternate"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 542
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V

    .line 543
    const v1, 0x8000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_60} :catch_61

    goto :goto_3b

    .line 550
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_61
    move-exception v10

    .line 551
    .local v10, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t save lock pattern "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 547
    .end local v10    # "re":Landroid/os/RemoteException;
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_7b
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_83
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_8a} :catch_61

    goto :goto_3b
.end method

.method public savedPasswordExists()Z
    .registers 4

    .prologue
    .line 390
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 392
    :goto_c
    return v1

    .line 391
    :catch_d
    move-exception v0

    .line 392
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public savedPatternExists()Z
    .registers 4

    .prologue
    .line 378
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 380
    :goto_c
    return v1

    .line 379
    :catch_d
    move-exception v0

    .line 380
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public setBiometricWeakLivelinessEnabled(Z)V
    .registers 9
    .param p1, "enabled"    # Z

    .prologue
    .line 971
    const-string v4, "lock_biometric_weak_flags"

    const-wide/16 v5, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 973
    .local v0, "currentFlag":J
    if-eqz p1, :cond_14

    .line 974
    const-wide/16 v4, 0x1

    or-long v2, v0, v4

    .line 978
    .local v2, "newFlag":J
    :goto_e
    const-string v4, "lock_biometric_weak_flags"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 979
    return-void

    .line 976
    .end local v2    # "newFlag":J
    :cond_14
    const-wide/16 v4, -0x2

    and-long v2, v0, v4

    .restart local v2    # "newFlag":J
    goto :goto_e
.end method

.method public setCameraEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1484
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setCameraEnabled(ZI)V

    .line 1485
    return-void
.end method

.method public setCameraEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1488
    const-string v0, "lockscreen.camera_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1489
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 282
    sput p1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    .line 283
    return-void
.end method

.method public setLockBeforeUnlock(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1497
    const-string v0, "lock_before_unlock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1498
    return-void
.end method

.method public setLockPatternEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 993
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 994
    return-void
.end method

.method public setLockPatternSize(J)V
    .registers 4
    .param p1, "size"    # J

    .prologue
    .line 1033
    const-string v0, "lock_pattern_size"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1034
    return-void
.end method

.method public setLockScreenDisabled(Z)V
    .registers 5
    .param p1, "disable"    # Z

    .prologue
    .line 481
    const-string v2, "lockscreen.disabled"

    if-eqz p1, :cond_a

    const-wide/16 v0, 0x1

    :goto_6
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 482
    return-void

    .line 481
    :cond_a
    const-wide/16 v0, 0x0

    goto :goto_6
.end method

.method public setLockoutAttemptDeadline()J
    .registers 7

    .prologue
    .line 1058
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .line 1059
    .local v0, "deadline":J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1060
    return-wide v0
.end method

.method public setOwnerInfo(Ljava/lang/String;I)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 556
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 557
    return-void
.end method

.method public setOwnerInfoEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 560
    const-string v0, "lock_screen_owner_info_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 561
    return-void
.end method

.method public setPermanentlyLocked(Z)V
    .registers 3
    .param p1, "locked"    # Z

    .prologue
    .line 1095
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1096
    return-void
.end method

.method public setPowerButtonInstantlyLocks(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1427
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1428
    return-void
.end method

.method public setShowErrorPath(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1045
    const-string v0, "lock_pattern_show_error_path"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1046
    return-void
.end method

.method public setVisibleDotsEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1037
    const-string v0, "lock_pattern_dotsvisible"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1038
    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1007
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1008
    return-void
.end method

.method public setWidgetsEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1468
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setWidgetsEnabled(ZI)V

    .line 1469
    return-void
.end method

.method public setWidgetsEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1472
    const-string v0, "lockscreen.widgets_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1473
    return-void
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 800
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 804
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v4, v1

    if-ge v2, v4, :cond_21

    .line 805
    aget-byte v0, v1, v2

    .line 806
    .local v0, "b":B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 808
    .end local v0    # "b":B
    :cond_21
    return-object v3
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;IZZ)V
    .registers 10
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "phoneState"    # I
    .param p3, "shown"    # Z
    .param p4, "showIcon"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1376
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v4

    if-eqz v4, :cond_1e

    if-eqz p3, :cond_1e

    .line 1377
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1384
    const/4 v4, 0x2

    if-ne p2, v4, :cond_26

    .line 1386
    const v2, 0x1040409

    .line 1387
    .local v2, "textId":I
    if-eqz p4, :cond_24

    const v1, 0x1080084

    .line 1388
    .local v1, "phoneCallIcon":I
    :goto_17
    invoke-virtual {p1, v1, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1394
    .end local v1    # "phoneCallIcon":I
    :goto_1a
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 1395
    .end local v2    # "textId":I
    :goto_1d
    return-void

    .line 1379
    :cond_1e
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1d

    .restart local v2    # "textId":I
    :cond_24
    move v1, v3

    .line 1387
    goto :goto_17

    .line 1390
    .end local v2    # "textId":I
    :cond_26
    const v2, 0x1040408

    .line 1391
    .restart local v2    # "textId":I
    if-eqz p4, :cond_32

    const v0, 0x10802db

    .line 1392
    .local v0, "emergencyIcon":I
    :goto_2e
    invoke-virtual {p1, v0, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1a

    .end local v0    # "emergencyIcon":I
    :cond_32
    move v0, v3

    .line 1391
    goto :goto_2e
.end method

.method public usingBiometricWeak()Z
    .registers 5

    .prologue
    .line 787
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 789
    .local v0, "quality":I
    const v1, 0x8000

    if-ne v0, v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public writeFallbackAppWidgetId(I)V
    .registers 5
    .param p1, "appWidgetId"    # I

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_fallback_appwidget_id"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1219
    return-void
.end method
