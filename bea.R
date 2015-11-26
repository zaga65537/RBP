# bea 假设

# ===================== 1 通用假设 =================

# --------------------- 投资收益率假设 ----------------

#  用于内含价值(EV)、新业务价值(VNB)、
#       毛保费准备金(GPV)和现金流预测的投资收益率假设

bea.ev.inv_rate_df = data.frame(tr=0.05, par=0.05, uv=0.055)
bea.vnb.inv_rate_df = bea.ev.inv_rate_df
bea.gpv.inv_rate_df = bea.ev.inv_rate_df

# 用于动态偿付能力测试（DST）的投资收益率假设
bea.dst.inv_rate_df = data.frame(tr=0.046055, par=0.05, uv=0.055)

#	EV、VNB等使用的风险贴现率
bea.ev.rdisc_rate = 0.12 # 年化
bea.vnb.rdisc_rate = bea.ev.rdisc_rate

# 财务报告准备金评估使用的贴现率
bea.acnt.rdisc_rate = data.frame(par=0.05, uv=0.05)

# 通胀率
bea.inflation = 0.03

# 分红利率和分红比例
bea.par.bonus = read.csv("bea.par.bonus")

# 万能结算利率
bea.uv.rate = read.csv("bea.uv.rate")

# 2.7	保险保障基金 计提基础为保费收入
bea.fund = read.csv("bea.fund")

#	保险业务监管费
bea.regular = read.csv("bea.regular")

# 税金
bea.tax.comp = 0.25
bea.tax.run = 0.055 # 短期（保险期间少于等于1年）意外险，按照毛保费收入的5.5%计提营业税金及附加



# =============================== 个人营销渠道假设 ============================

# agent commission
bea.agent.commission = read.csv("bea.agent.commission.csv")

# indirect commission
bea.agent.fyc = 1.2
bea.agent.syc = 0.8

# management fee 只有主险有每单的管理费用
bea.agent.maintain = list(pol=40, prm=0.02)
bea.agent.acquire = list(pol=160, prm=list(s=0.02, r=0.18))

# death rate factor
bea.agent.death_ratio = data.frame(m = c(0.71,0.76,0.82,0.88,0.94,1), f= c(0.69,0.75,0.81,0.88,0.94,1))

# accident rate 
# 法定准备金评估、财务报告准备金评估和EV、GPV等报告编制采用100%以上经验假设
bea.agent.accident = 0.0004
bea.agent.public_traffic = 0.000078 
bea.agent.private_traffic = 0.000054
bea.agent.air = 0.000018 

# CI 重疾发生率

#	法定报告准备金评估 100%重疾发生率与100%中国寿险业重疾发生率表（2006-2010）评估结果取大
bea.ci_rates.ri = read.table("mort.ci.ri", header = T)
bea.ci_rates.ci6 = read.table("mort.ci.ci6", header = T)
bea.ci_rates.ci25 = read.table("mort.ci.ci25", header = T)
bea.agent.ci6 = data.frame(m=apply(cbind(bea.ci_rates.ri$m,bea.ci_rates.ci6$m), 1, max),f=apply(cbind(bea.ci_rates.ri$f,bea.ci_rates.ci6$f), 1, max))
bea.agent.ci25 = data.frame(m=apply(cbind(bea.ci_rates.ri$m,bea.ci_rates.ci25$m), 1, max),f=apply(cbind(bea.ci_rates.ri$f,bea.ci_rates.ci25$f), 1, max))

# 财务报告准备金评估和EV、GPV等报告编制：男性85%/女性70%重疾发生率，且在完全核保情形下考虑如下的选择因子
bea.acnt.ci_factor = list(m=0.85, f=0.7)

# lapse rate 非万能
bea.agent.nuv.lapse = read.csv("bea.agent.nonuv.lapse.csv")

# 件均保额
bea.agent.avg_sa = read.table("bea.agent.avg_sa", header = T)

# 短险数据
bea.agent.short = read.csv("bea.agent.short.csv")



# ============================== 银保假设 ========================

# 销售费用 数据采用2016年度，400亿规划

bea.bank.commission = data.frame(cterm=c(1,2,3), fee=c(0.0489,0.05,0.065))


